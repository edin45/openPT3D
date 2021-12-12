import platform
import os
import sys
from tkinter.constants import NONE
import numpy as np
from plyfile import PlyData
import open3d as o3d
import PySimpleGUI as sg
import optparse

#os_name = platform.system()
#layout = [
#    [sg.Text('Images Folder:'),sg.In(size=(70,100), enable_events=True ,key='-IMG_FOLDER-'),sg.FolderBrowse()],
#    [sg.Text('Result Folder:'),sg.In(size=(70,100), enable_events=True ,key='-RESULT_FOLDER-'),sg.FolderBrowse()],
#    [sg.Text("Target Resolution"), sg.InputText(size=(70,100),key='target_res',default_text="500000")],
#    [sg.ProgressBar(1, orientation='h', size=(20, 20), key='progress')],
#    [sg.Combo(["Possion","BPA"], size=(70, 5), enable_events=True, key='-COMBO-')]
#    [sg.Button("Close")]
#    ]
#window = sg.Window("openPT3D",layout,size=(700,550))

#image_folder = None
#result_folder = None
#target_resolution = "500000"
#while True:
#    event, values = window.read()

#    if event == "Close" or event == sg.WIN_CLOSED:
#        break
#    if event == '-IMG_FOLDER-':
#        image_folder = values['-IMG_FOLDER-']
#    if event == '-RESULT_FOLDER-':
#        result_folder = values['-RESULT_FOLDER-']
#    if event == 'target_res':
#        target_resolution = values['targe_res']
#
#window.close()

file1 = open("open_mvg_folder.txt","r+") 
filecontent = file1.read()
parser = optparse.OptionParser()
parser.add_option("-i","--input_images",action="store",help="Input Images")
parser.add_option("-r","--result_folder",action="store",help="Folder where Results are stored")
options, args = parser.parse_args()
image_folder = options.input_images
result_folder = options.result_folder
#image_folder = input("Image Folder: ")
#result_folder = input("Result Folder: ")
target_resolution = input("Target Resolution (Default 500000):")
if target_resolution == "":
    target_resolution = 500000
else:
    target_resolution = int(target_resolution)
strategy = input("Mesh Reconstruction Strategy BPA/Poisson (Default: Possion): ")
if strategy.lower() != "bpa":
    strategy = "Possion"
else:
    strategy = strategy.upper()
open_mvg_build_folder = ""
if filecontent == "":
    open_mvg_build_folder = input("openMVG_build Folder: ")
    file2 = open("open_mvg_folder.txt","w")
    file2.write(open_mvg_build_folder)
    file2.close()
else:
    open_mvg_build_folder = file1.read()

file1.close()

filePath = (filecontent if open_mvg_build_folder == "" else open_mvg_build_folder) + "/software/SfM/SfM_SequentialPipeline.py"
script_descriptor = open(filePath)
a_script = script_descriptor.read()
sys.argv = [f"{filePath}", f"{image_folder}", f"{result_folder}"]
    
exec(a_script)

os.system((filecontent if open_mvg_build_folder == "" else open_mvg_build_folder) + f"/Linux-x86_64-RELEASE/openMVG_main_ConvertSfM_DataFormat binary -i {result_folder}/reconstruction_sequential/sfm_data.bin -o {result_folder}/sfm-data.json -V -I -E")

def read_ply(filename):
    """ read XYZ point cloud from filename PLY file """
    plydata = PlyData.read(filename)
    pc = plydata['vertex'].data
    pc_array = np.array([[x, y, z] for x,y,z,r,g,b in pc])
    return pc_array 

point_cloud = read_ply(f"{result_folder}/reconstruction_sequential/colorized.ply")


point_cloud_for_bundle = ""
for item in point_cloud:
    point_cloud_for_bundle+=f"{item[0]} {item[1]} {item[2]}\n"
bundle_out_file = open("bundle.out","w")
bundle_out_file.write(f"{point_cloud_for_bundle}".replace(","," "))
bundle_out_file.close()

pcd = o3d.geometry.PointCloud()
pcd.points = o3d.utility.Vector3dVector(point_cloud[:,:3])
#normals = pcd.estimate_normals(pcd)
normals = pcd.estimate_normals(search_param=o3d.geometry.KDTreeSearchParamHybrid(radius=0.1, max_nn=30))

#pcd.orient_normals_consistent_tangent_plane(k=15)
#pcd.normals = o3d.utility.Vector3dVector(normals)
#o3d.visualization.draw_geometries([pcd])
distances = pcd.compute_nearest_neighbor_distance()
avg_dist = np.mean(distances)
radius = 3 * avg_dist

mesh = None

if strategy == "BPA":
    bpa_mesh = o3d.geometry.TriangleMesh.create_from_point_cloud_ball_pivoting(pcd,o3d.utility.DoubleVector([radius, radius * 2]))
    dec_mesh = bpa_mesh.simplify_quadric_decimation(target_resolution)
    dec_mesh.remove_degenerate_triangles()
    dec_mesh.remove_duplicated_triangles()
    dec_mesh.remove_duplicated_vertices()
    dec_mesh.remove_non_manifold_edges()
    mesh = dec_mesh
else:
    poisson_mesh = o3d.geometry.TriangleMesh.create_from_point_cloud_poisson(pcd, depth=10, width=0, scale=1.1, linear_fit=False)[0]
    bbox = pcd.get_axis_aligned_bounding_box()
    p_mesh_crop = poisson_mesh.crop(bbox)
    mesh = p_mesh_crop

print(result_folder)

o3d.io.write_triangle_mesh(f"{result_folder}/result_mesh.ply", mesh)