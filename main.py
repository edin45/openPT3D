import platform
import os
import sys
import numpy as np
from plyfile import PlyData

os_name = platform.system()

file1 = open("open_mvg_folder.txt","r+") 
print(file1.read())

image_folder = input("Image Folder: ")
result_folder = input("Result Folder: ")
if file1.read() == "None":
    open_mvg_build_folder = input("openMVG_build Folder: ")
    file2 = open("open_mvg_folder.txt","w")
    file2.write(open_mvg_build_folder)
    file2.close()
else:
    open_mvg_build_folder = file1.read()
file1.close()

filePath = f"{open_mvg_build_folder}/software/SfM/SfM_SequentialPipeline.py"
script_descriptor = open(filePath)
a_script = script_descriptor.read()
sys.argv = [f"{filePath}", f"{image_folder}", f"{result_folder}"]
    
exec(a_script)

def read_ply(filename):
    """ read XYZ point cloud from filename PLY file """
    plydata = PlyData.read(filename)
    pc = plydata['vertex'].data
    pc_array = np.array([[x, y, z] for x,y,z in pc])
    return pc_array 

print(read_ply(f"{result_folder}/reconstruction_sequential/colorized.ply"))
#file = os.path.join("openMVG_Build_Linux/software/Sfm","SfM_SequentialPipeline.py")
#exec(open(f"{file} \"{image_folder}\" \"{result_folder}\"").read())