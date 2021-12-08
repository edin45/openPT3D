import cv2
import os
import json
import numpy as np

class CalculateCameraPositions:
    def __init__(self,result_folder,image_count,image_path,feature_type,image_folder):
        pass

    def calculate_camera_positions(self):


        f = open(f'{self.result_folder}/features.json')
        features = json.load(f)
        item_0 = features[0]
        for item in features:
            template_img_matches = features[item]["template_img_matches"]
            other_img_matches = features[item]["other_img_matches"]
            print(item + ": \n")
            for i in range(0,len(template_img_matches)):
                camera_pos = [0,0,0]
                camera_rot = [0,0,0]

                template_img_matches[i][0],template_img_matches[i][1]
                other_img_matches[i][0],other_img_matches[i][1]




        f.close()