import cv2
import math
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

class Sfm:

    def __init__(self,matches_map):
        self.matches_map = matches_map
        self.K = np.array([[518.86, 0., 285.58],
              [0., 519.47, 213.74],
              [0.,   0.,   1.]])
        self.point_3d = []

    def execute_sfm_process(self):
        index = 1
        total_length = len(self.matches_map)
        for item in self.matches_map:
            print(f"Sfm: {index} / {total_length}")
            index+=1
            self.create_essential_matrix(self.matches_map[item]["template_keypoints"],self.matches_map[item]["right_keypoints"],self.matches_map[item]["matches"])
            self.recover_pose()
            self.triangulate()
            self.undistort_points()
        self.display_point_cloud()

    #########################
    #2----essential matrix--#
    #########################
    def create_essential_matrix(self,kp1,kp2,matches):
        
        self.p1 = np.float32([ kp1[m.queryIdx].pt for m in matches ]).reshape(-1,1,2)
        self.p2 = np.float32([ kp2[m.trainIdx].pt for m in matches ]).reshape(-1,1,2)
        self.E, self.mask = cv2.findEssentialMat(self.p1, self.p2, self.K, cv2.RANSAC, 0.999, 1.0)

        self.matchesMask = self.mask.ravel().tolist()

    ####################
    #3----recoverpose--#
    ####################
    def recover_pose(self):
        self.points, self.R, self.t, mask = cv2.recoverPose(self.E, self.p1, self.p2)
        #print("Rotation:")
        #print(self.R)
        #print("Translation:")
        #print(self.t)
        # p1_tmp = np.expand_dims(np.squeeze(p1), 0)
        p1_tmp = np.ones([3, self.p1.shape[0]])
        p1_tmp[:2,:] = np.squeeze(self.p1).T
        p2_tmp = np.ones([3, self.p2.shape[0]])
        p2_tmp[:2,:] = np.squeeze(self.p2).T
        #print((np.dot(self.R, p2_tmp) + self.t) - p1_tmp)

    #######################
    #4----triangulation---#
    #######################

    #calculate projection matrix for both camera
    def triangulate(self):
        M_r = np.hstack((self.R, self.t))
        M_l = np.hstack((np.eye(3, 3), np.zeros((3, 1))))

        self.P_l = np.dot(self.K,  M_l)
        self.P_r = np.dot(self.K,  M_r)

    # undistort points
    def undistort_points(self):
        self.p1 = self.p1[np.asarray(self.matchesMask)==1,:,:]
        self.p2 = self.p2[np.asarray(self.matchesMask)==1,:,:]
        p1_un = cv2.undistortPoints(self.p1,self.K,None)
        p2_un = cv2.undistortPoints(self.p2,self.K,None)
        p1_un = np.squeeze(p1_un)
        p2_un = np.squeeze(p2_un)

        #triangulate points this requires points in normalized coordinate
        point_4d_hom = cv2.triangulatePoints(self.P_l, self.P_r, p1_un.T, p2_un.T)
        point_3d = point_4d_hom / np.tile(point_4d_hom[-1, :], (4, 1))
        point_3d = point_3d[:3, :].T
        for i in point_3d:
            self.point_3d.append(i)

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
