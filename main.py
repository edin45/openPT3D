import platform
import os
import sys
import numpy as np
import optparse
import json
import subprocess

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



parser = optparse.OptionParser()
parser.add_option("-i","--input_images",action="store",help="Input Images")
parser.add_option("-r","--result_folder",action="store",help="Folder where Results are stored")
options, args = parser.parse_args()
image_folder = options.input_images
result_folder = options.result_folder
target_resolution = input("Target Resolution (Default 500000):")
if target_resolution == "":
    target_resolution = 500000
else:
    target_resolution = int(target_resolution)
#strategy = input("Mesh Reconstruction Strategy BPA (No Texture)/Possion (No Texture)/openMVS (Default: openMVS): ")
#if strategy.lower() != "bpa" and strategy.lower() != "Possion":
#    strategy = "openMVS"
#else:
#    strategy = strategy.upper()

depth_recon_strategy = input("Dense Reconstruction Strategy CMVS/openMVS (Default openMVS): ")
if depth_recon_strategy != "CMVS":
    depth_recon_strategy = "openMVS"
else:
    depth_recon_strategy = "CMVS"

if depth_recon_strategy == "openMVS":
    decimate_factor = input("Decimate Factor for Mesh Reconstruction (Default: 1, Increase if program uses to much Ram): ")
    if decimate_factor == "":
        decimate_factor = 1
max_imgs = 50
focal_length = str(input("Focal Length (px, you can get this value by multiplying the bigger value width, height by 1.2): "))

current_file_path = os.path.dirname(os.path.abspath(__file__))

open_mvg_folder = str(current_file_path) + f"/externalSoftware/openMVG_Build_{platform.system()}/"
open_mvg_binary_folder = ("Linux-x86_64-RELEASE" if platform.system()=="Linux" else "Windows-x86_64-RELEASE")
cmvs_folder = current_file_path + f"/externalSoftware/CMVS_PMVS/{platform.system()}"
#filePath = open_mvg_folder + "/software/SfM/SfM_SequentialPipeline.py"
#script_descriptor = open(filePath)
#a_script = script_descriptor.read()
#sys.argv = [f"{filePath}", f"{image_folder}", f"{result_folder}", f"-f {focal_length}"]
    
#exec(a_script)

# Indicate the openMVG binary directory
OPENMVG_SFM_BIN = current_file_path + "/externalSoftware/openMVG_Build_Linux/Linux-x86_64-RELEASE"

# Indicate the openMVG camera sensor width directory
CAMERA_SENSOR_WIDTH_DIRECTORY = current_file_path + "/externalSoftware/openMVG/src/software/SfM" + "/../../openMVG/exif/sensor_width_database"

input_dir = image_folder
output_dir = result_folder
matches_dir = os.path.join(output_dir, "matches")
reconstruction_dir = os.path.join(output_dir, "reconstruction_sequential")
camera_file_params = os.path.join(CAMERA_SENSOR_WIDTH_DIRECTORY, "sensor_width_camera_database.txt")

print ("Using input dir  : ", input_dir)
print ("      output_dir : ", output_dir)

# Create the ouput/matches folder if not present
if not os.path.exists(output_dir):
  os.mkdir(output_dir)
if not os.path.exists(matches_dir):
  os.mkdir(matches_dir)

print ("1. Intrinsics analysis")
pIntrisics = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_SfMInit_ImageListing"),  "-i", input_dir, "-o", matches_dir, "-d", camera_file_params,"-f", focal_length] )
pIntrisics.wait()

print ("2. Compute features")
pFeatures = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeFeatures"),  "-i", matches_dir+"/sfm_data.json", "-o", matches_dir, "-m", "SIFT"] )
pFeatures.wait()

print ("3. Compute matching pairs")
pPairs = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_PairGenerator"), "-i", matches_dir+"/sfm_data.json", "-o" , matches_dir + "/pairs.bin" ] )
pPairs.wait()

print ("4. Compute matches")
pMatches = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeMatches"),  "-i", matches_dir+"/sfm_data.json", "-p", matches_dir+ "/pairs.bin", "-o", matches_dir + "/matches.putative.bin" ] )
pMatches.wait()

print ("5. Filter matches" )
pFiltering = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_GeometricFilter"), "-i", matches_dir+"/sfm_data.json", "-m", matches_dir+"/matches.putative.bin" , "-g" , "f" , "-o" , matches_dir+"/matches.f.bin" ] )
pFiltering.wait()

# Create the reconstruction if not present
if not os.path.exists(reconstruction_dir):
    os.mkdir(reconstruction_dir)

print ("6. Do Sequential/Incremental reconstruction")
pRecons = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_SfM"), "--sfm_engine", "INCREMENTAL", "--input_file", matches_dir+"/sfm_data.json", "--match_dir", matches_dir, "--output_dir", reconstruction_dir] )
pRecons.wait()

print ("7. Colorize Structure")
pRecons = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeSfM_DataColor"),  "-i", reconstruction_dir+"/sfm_data.bin", "-o", os.path.join(reconstruction_dir,"colorized.ply")] )
pRecons.wait()


def execute_pmvs_process(use_cmvs):
    os.chdir(result_folder + "/PMVS")
    sfm_data_file = open("../matches/sfm_data.json")
    sfm_data = json.load(sfm_data_file)
    if len(sfm_data["views"]) > max_imgs and use_cmvs:
        os.system(cmvs_folder + f"/cmvs ./ maximage={max_imgs}")
        os.system(cmvs_folder + f"/genOption ./")
        cmvs_command = f"sh pmvs.sh"
    else:
        cmvs_command = cmvs_folder + f"/pmvs2 './' 'pmvs_options.txt'"
    #print("cmvs_command: " + cmvs_command)
    os.system(cmvs_command)

    sfm_data_file.close()

def execute_openMVS_process():
    os.chdir(result_folder)
    os.system(f"{current_file_path}/externalSoftware/openMVS_{platform.system()}_CPU/bin/DensifyPointCloud scene.mvs")

if depth_recon_strategy == "CMVS":
    os.system(open_mvg_folder + open_mvg_binary_folder + f"/openMVG_main_openMVG2PMVS -i {result_folder}/reconstruction_sequential/sfm_data.bin -o {result_folder}")
    execute_pmvs_process(True)
    pmvs_ply_file = f"{result_folder}/PMVS/models/pmvs_options.txt.ply"
    if os.path.isfile(pmvs_ply_file) == False:
        execute_pmvs_process(False)
else:
    os.system(open_mvg_folder + open_mvg_binary_folder + f"/openMVG_main_openMVG2openMVS -i {result_folder}/reconstruction_sequential/sfm_data.bin -o {result_folder}/scene.mvs -d {result_folder}/undistorted")
    execute_openMVS_process()





#def read_ply(filename):
#    """ read XYZ point cloud from filename PLY file """
#    plydata = PlyData.read(filename)
#    pc = plydata['vertex'].data
#    #a,b_b,c,,d
#    pc_array = np.array([[x, y, z, r, g, b] for x,y,z,a,b_b,c,r,g,b in pc])
#    return pc_array 

#point_cloud = read_ply(pmvs_ply_file if depth_recon_strategy == "CMVS" else f"{result_folder}/scene_dense.ply")

#bundle_out = ""

#f = open(f'{result_folder}/sfm-data.json')
#sfm_data = json.load(f)
#bundle_out+=str(len(sfm_data["views"]))+" "+ str(len(point_cloud)) + "\n"
#pixels = focal_length * 80.457
#bundle_out+=str(pixels) + " " + "0.0 " + "0.0\n"
#for item in sfm_data["extrinsics"]:
#    for rotItem in item["value"]["rotation"]:
#        bundle_out+=str(rotItem[0]) + " " + str(rotItem[1]) + " " + str(rotItem[2]) + "\n"
#    bundle_out+=str(item["value"]["center"][0]) + " " + str(item["value"]["center"][1]) + " " + str(item["value"]["center"][2]) + "\n"
#bundle_out_file = open(f"{result_folder}/bundle.outbundle.rd.out","w")
#bundle_out_file.write(f"{bundle_out}".replace(","," "))
#bundle_out_file.close()

#f.close()
#pcd = o3d.geometry.PointCloud()
#print(point_cloud)
#pcd.points = o3d.utility.Vector3dVector(point_cloud[:,:3])
#pcd.colors = o3d.utility.Vector3dVector(point_cloud[:,6:9]/255)
#normals = pcd.estimate_normals(pcd)
#normals = pcd.estimate_normals(search_param=o3d.geometry.KDTreeSearchParamHybrid(radius=0.1, max_nn=30))

#pcd.orient_normals_consistent_tangent_plane(k=15)
#pcd.normals = o3d.utility.Vector3dVector(normals)
#o3d.visualization.draw_geometries([pcd])
#distances = pcd.compute_nearest_neighbor_distance()
#avg_dist = np.mean(distances)
#radius = 3 * avg_dist

#mesh = None

#if strategy == "BPA":
#    bpa_mesh = o3d.geometry.TriangleMesh.create_from_point_cloud_ball_pivoting(pcd,o3d.utility.DoubleVector([radius, radius * 2]))
#    dec_mesh = bpa_mesh.simplify_quadric_decimation(target_resolution)
#    dec_mesh.remove_degenerate_triangles()
#    dec_mesh.remove_duplicated_triangles()
#    dec_mesh.remove_duplicated_vertices()
#    dec_mesh.remove_non_manifold_edges()
#    mesh = dec_mesh
#    o3d.io.write_triangle_mesh(f"{result_folder}/result_mesh.ply", mesh)
#elif strategy == "Possion":
#    poisson_mesh = o3d.geometry.TriangleMesh.create_from_point_cloud_poisson(pcd, depth=12, width=0, scale=1, linear_fit=False)[0]
#    bbox = pcd.get_axis_aligned_bounding_box()
#    p_mesh_crop = poisson_mesh.crop(bbox)
#    mesh = p_mesh_crop
#    o3d.io.write_triangle_mesh(f"{result_folder}/result_mesh.ply", mesh)
#else:
if depth_recon_strategy == "CMVS":
    print(f"Dense Point Cloud: {result_folder}/PMVS/models/pmvs_options.txt.ply")
else:
    os.chdir(f"{result_folder}")
    #while True:
        #if os.path.isfile("scene_dense_mesh.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/openMVS_{platform.system()}_CPU/bin/ReconstructMesh -d {decimate_factor} scene_dense.mvs")
        #elif os.path.isfile("scene_dense_mesh_refine.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/openMVS_{platform.system()}_CPU/bin/RefineMesh --resolution-level={decimate_factor} scene_dense_mesh.mvs")
        #elif os.path.isfile("scene_dense_mesh_refine_texture.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/openMVS_{platform.system()}_CPU/bin/TextureMesh scene_dense_mesh_refine.mvs")
        #else:
        #    break

    print("Final Mesh: " + result_folder + "/scene_dense_mesh_mesh_refine_texture. ply / glb")
