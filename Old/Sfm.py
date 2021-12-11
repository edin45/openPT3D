from datetime import date
import cv2
import math
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import os
import struct
from pyntcloud import PyntCloud
import pandas as pd
import threading
import multiprocessing
import time
import math

class Sfm:

    def __init__(self,matches_map,result_folder,image_width,image_height,focal_length):
        self.matches_map = matches_map
        self.result_folder = result_folder
        #pixelsX = (image_width * 0.5) / math.tan(focal_length * 0.5 * math.pi/180)
        #pixelsX = (image_width) * (1.2)
        #pixelsY = (image_height) * (1.2)
        #pixels = focal_length * 80.457
        #pixels = max(image_width,image_height) * 1.2
        #self.K = np.array([[pixels, image_width/2],
        #                   [0, pixels , image_height/2],
        #                   [0.,   0.,   1.]])
        self.K = np.array([[2759.48, 0., 1520.69],
              [0., 2764.16, 1006.81],
              [0.,   0.,   1.]])
        self.point_3d = []
        self.color = []
        self.p1s = []
        self.p2s = []
        self.Es = []
        self.masks = []
        self.matchesMasks = []
        self.points = []
        self.Rs = []
        self.ts = []
        self.P_ls = []
        self.P_rs = []

    def execute_sfm_process(self):
        
        self.total_length = len(self.matches_map)
        #print(f"item_from: {item_from_to[0]}, item_to: {item_from_to[1]}")
        index = 0
        for item in self.matches_map:
            #print(f"index: {index} -- {item_from_to}")
            #if index >= item_from_to[0] and index <= item_from_to[1]:
            print(f"Sfm: {index} / {self.total_length}")
            self.create_essential_matrix(self.matches_map[item]["template_keypoints"],self.matches_map[item]["right_keypoints"],self.matches_map[item]["matches"],index)
            self.recover_pose(index)
            self.triangulate(index)
            self.undistort_points(index)
            #else:
            #    print(f"skip: {thread_name}")
            index+=1
            
        self.write_pointcloud("pointcloud_sfm.ply",self.point_3d)
        #self.display_point_cloud()

    #########################
    #2----essential matrix--#
    #########################
    def create_essential_matrix(self,kp1,kp2,matches,index):
        
        self.p1s.append(np.float32([ kp1[m.queryIdx].pt for m in matches ]).reshape(-1,1,2))
        self.p2s.append(np.float32([ kp2[m.trainIdx].pt for m in matches ]).reshape(-1,1,2))
        E, mask = cv2.findEssentialMat(self.p1s[index], self.p2s[index], self.K, cv2.RANSAC, 0.999, 1.0)
        self.Es.append(E)
        self.masks.append(mask)

        self.matchesMasks.append(mask.ravel().tolist())

    ####################
    #3----recoverpose--#
    ####################
    def recover_pose(self,index):
        points, R, t, mask = cv2.recoverPose(self.Es[index], self.p1s[index], self.p2s[index])
        self.points.append(points)
        self.Rs.append(R)
        self.ts.append(t)
        self.masks[index] = mask
        #print("Rotation:")
        #print(self.R)
        #print("Translation:")
        #print(self.t)
        # p1_tmp = np.expand_dims(np.squeeze(p1), 0)
        p1_tmp = np.ones([3, self.p1s[index].shape[0]])
        p1_tmp[:2,:] = np.squeeze(self.p1s[index]).T
        p2_tmp = np.ones([3, self.p2s[index].shape[0]])
        p2_tmp[:2,:] = np.squeeze(self.p2s[index]).T
        #print((np.dot(self.R, p2_tmp) + self.t) - p1_tmp)

    #######################
    #4----triangulation---#
    #######################

    #calculate projection matrix for both camera
    def triangulate(self,index):
        M_r = np.hstack((self.Rs[index], self.ts[index]))
        M_l = np.hstack((np.eye(3, 3), np.zeros((3, 1))))

        self.P_ls.append(np.dot(self.K,  M_l))
        self.P_rs.append(np.dot(self.K,  M_r))

    # undistort points
    def undistort_points(self,index):
        self.p1s[index] = self.p1s[index][np.asarray(self.matchesMasks[index])==1,:,:]
        self.p2s[index] = self.p2s[index][np.asarray(self.matchesMasks[index])==1,:,:]
        p1_un = cv2.undistortPoints(self.p1s[index],self.K,None)
        p2_un = cv2.undistortPoints(self.p2s[index],self.K,None)
        p1_un = np.squeeze(p1_un)
        p2_un = np.squeeze(p2_un)

        #triangulate points this requires points in normalized coordinate
        point_4d_hom = cv2.triangulatePoints(self.P_ls[index], self.P_rs[index], p1_un.T, p2_un.T)
        point_3d = point_4d_hom / np.tile(point_4d_hom[-1, :], (4, 1))
        point_3d = point_3d[:3, :].T
        for i in point_3d:
            self.point_3d.append(i)
            self.color.append([0,0,0])

    #############################
    #5----output 3D pointcloud--#
    #############################
    def display_point_cloud(self):
        #print(self.point_3d) 
        fig = plt.figure()
        ax = fig.add_subplot(111, projection='3d')
        ax.set_xlabel('X Label')
        ax.set_ylabel('Y Label')
        ax.set_zlabel('Z Label')

        for x, y, z in self.point_3d:
            ax.scatter(x, y, z, c="r", marker="o")

        plt.show()
        #fig.savefig('3-D_' + str(counter) + '.jpg')

    def write_pointcloud(self, filename,points,rgb_points=None):
        cloud = PyntCloud(pd.DataFrame(
            # same arguments that you are passing to visualize_pcl
            data=np.hstack((points, points)),
            columns=["x", "y", "z", "red", "green", "blue"]))

        cloud.to_file(os.path.join(self.result_folder,filename))
