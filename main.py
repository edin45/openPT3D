from cv2 import detail_ExposureCompensator
from calculate_camera_positions import CalculateCameraPositions
from detect_features import DetectFeatures


resize_factor = 1
orb_or_sift = input("1: ORB, 2: SIFT (Default: 2): ")
if orb_or_sift != "1":
    orb_or_sift = "2"
imgs_folder = input("Images folder: ")
result_folder = input("Result folder: ")
default_max_distance = 60 if orb_or_sift == "1" else 1500
max_distance = input(f"Max Distance (Default: {default_max_distance}): ")
if max_distance == "":
    max_distance = default_max_distance
else:
    max_distance = int(max_distance)

detect_features_obj = DetectFeatures(resize_factor,imgs_folder,orb_or_sift,max_distance,result_folder)
detect_features_obj.detect_features()
calc_camera_positions_obj = CalculateCameraPositions(result_folder,len(detect_features_obj.imgs))
calc_camera_positions_obj.calculate_camera_positions()