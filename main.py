import platform
import os
import sys
import numpy as np
from plyfile import PlyData
import open3d as o3d

os_name = platform.system()

file1 = open("open_mvg_folder.txt","r+") 
filecontent = file1.read()
print(filecontent)
image_folder = input("Image Folder: ")
result_folder = input("Result Folder: ")
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

def read_ply(filename):
    """ read XYZ point cloud from filename PLY file """
    plydata = PlyData.read(filename)
    pc = plydata['vertex'].data
    pc_array = np.array([[x, y, z] for x,y,z,r,g,b in pc])
    return pc_array 

point_cloud = read_ply(f"{result_folder}/reconstruction_sequential/colorized.ply")

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

o3d.io.write_triangle_mesh("./result_mesh.ply", mesh)
#o3d.visualization.draw_geometries([mesh])
#file = os.path.join("openMVG_Build_Linux/software/Sfm","SfM_SequentialPipeline.py")
#exec(open(f"{file} \"{image_folder}\" \"{result_folder}\"").read())