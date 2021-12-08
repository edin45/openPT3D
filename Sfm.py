import cv2
import math
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

class Sfm:

    def __init__(self,matches_map):
        self.matches_map = matches_map

    #########################
    #2----essential matrix--#
    #########################
    def create_essential_matrix(self,kp1,kp2,matches):
        K = np.array([[518.86, 0., 285.58],
              [0., 519.47, 213.74],
              [0.,   0.,   1.]])
        self.p1 = np.float32([ kp1[m.queryIdx].pt for m in matches ]).reshape(-1,1,2)
        self.p2 = np.float32([ kp2[m.trainIdx].pt for m in matches ]).reshape(-1,1,2)
        self.E, self.mask = cv2.findEssentialMat(self.p1, self.p2, K, cv2.RANSAC, 0.999, 1.0)

        self.matchesMask = self.mask.ravel().tolist()

        #draw_params = dict(matchColor = (0,255,0), # draw matches in green color
        #                singlePointColor = None,
        #                matchesMask = matchesMask, # draw only inliers
        #                flags = 2)

        #img_inliermatch = cv2.drawMatches(self.img1,kp1,self.img2,kp2,good,None,**draw_params)
        #cv2.imwrite('inlier_match_' + str(counter) + '.png',img_inliermatch)
        print("Essential matrix:")
        print(self.E)

    ####################
    #3----recoverpose--#
    ####################
    def recover_pose(self):
        points, self.R, self.t, mask = cv2.recoverPose(self.E, self.p1, self.p2)
        print("Rotation:")
        print(self.R)
        print("Translation:")
        print(self.t)
        # p1_tmp = np.expand_dims(np.squeeze(p1), 0)
        p1_tmp = np.ones([3, self.p1.shape[0]])
        p1_tmp[:2,:] = np.squeeze(self.p1).T
        p2_tmp = np.ones([3, self.p2.shape[0]])
        p2_tmp[:2,:] = np.squeeze(self.p2).T
        print((np.dot(self.R, p2_tmp) + self.t) - p1_tmp)

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
        self.point_3d = point_4d_hom / np.tile(point_4d_hom[-1, :], (4, 1))
        self.point_3d = self.point_3d[:3, :].T

    #############################
    #5----output 3D pointcloud--#
    #############################
    def display_point_cloud(self):
        fig = plt.figure()
        ax = fig.add_subplot(111, projection='3d')
        ax.set_xlabel('X Label')
        ax.set_ylabel('Y Label')
        ax.set_zlabel('Z Label')

        for x, y, z in self.point_3d:
            ax.scatter(x, y, z, c="r", marker="o")

        plt.show()
        #fig.savefig('3-D_' + str(counter) + '.jpg')
