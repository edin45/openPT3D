from cv2 import detail_ExposureCompensator
from calculate_camera_positions import calculate_camera_positions
from detect_features import detect_features


resize_factor = 1
orb_or_sift = input("1: ORB, 2: SIFT (Default: 1): ")
if orb_or_sift != "2":
    orb_or_sift = "1"
imgs_folder = input("Images folder: ")
result_folder = input("Result folder: ")
default_max_distance = 60 if orb_or_sift == "1" else 1500
max_distance = input(f"Max Distance (Default: {default_max_distance}): ")
if max_distance == "":
    max_distance = default_max_distance
else:
    max_distance = int(max_distance)

detect_features(resize_factor,imgs_folder,orb_or_sift,max_distance,result_folder)
calculate_camera_positions(result_folder)