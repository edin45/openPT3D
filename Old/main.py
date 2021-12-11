import multiprocessing
from cv2 import detail_ExposureCompensator
from numpy import double
from Sfm import Sfm
from calculate_camera_positions import CalculateCameraPositions
from detect_features import DetectFeatures
import threading

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

focal_length = double(input("Focal Length: "))

detect_features_obj = DetectFeatures(resize_factor,imgs_folder,orb_or_sift,max_distance,result_folder)
detect_features_obj.detect_features()
sfm_obj = Sfm(detect_features_obj.matches_map,result_folder,detect_features_obj.imgs[0].shape[0],detect_features_obj.imgs[0].shape[1],focal_length)
sfm_obj.execute_sfm_process()
#def compute(asdf,thread_name):
#    print(thread_name)

#cpu_count = 4
#multiprocessing.cpu_count()
#chunk_count = int(len(detect_features_obj.matches_map) / 4)

#thread1 = threading.Thread(target=sfm_obj.execute_sfm_process, args=([0*chunk_count,((0+1)*chunk_count)],"Thread-1",))
#thread1.start()

#thread2 = threading.Thread(target=sfm_obj.execute_sfm_process, args=([1*chunk_count,((1+1)*chunk_count)],"Thread-2",))
#thread2.start()

#thread3 = threading.Thread(target=sfm_obj.execute_sfm_process, args=([2*chunk_count,((2+1)*chunk_count)],"Thread-3",))
#thread3.start()

#thread4 = threading.Thread(target=sfm_obj.execute_sfm_process, args=([3*chunk_count,len(detect_features_obj.matches_map)],"Thread-4",))
#thread4.start()

#print(threading.active_count())

#thread1.join()
#thread2.join()
#thread3.join()
#thread4.join()

#sfm_obj.undistort_points()

#sfm_obj.write_pointcloud("pointcloud_sfm.ply",sfm_obj.point_3d)