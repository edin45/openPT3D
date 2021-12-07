import cv2
import os
import json

def calculate_camera_positions(result_folder):
    f = open(f'{result_folder}/features.json')
    features = json.load(f)

    for item in features:
        print(f"{item}\n")
    f.close()