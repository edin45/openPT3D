import platform
import os
import sys
import numpy as np
import optparse
import json
import subprocess
import cv2

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

depth_recon_strategy = input("Dense Reconstruction Strategy CMVS(Only on Linux)/openMVS (Default openMVS): ")
if depth_recon_strategy != "CMVS":
    depth_recon_strategy = "openMVS"
else:
    depth_recon_strategy = "CMVS"

if depth_recon_strategy == "openMVS":
    decimate_factor = input("Decimate Factor for Mesh Reconstruction (Default: 1, Increase if program uses to much Ram): ")
    if decimate_factor == "":
        decimate_factor = 1
max_imgs = 50

imgs_folder = os.listdir(image_folder)
img = cv2.imread(os.path.join(image_folder,imgs_folder[0]))
focal_length = str(max(img.shape[0],img.shape[1]) * 1.2)
#str(input("Focal Length (px, you can get this value by multiplying the bigger value width, height by 1.2): "))

current_file_path = os.getcwd()

slash_replacement = "/"

if platform.system() == "Linux":
    open_mvg_folder = str(current_file_path) + f"/externalSoftware/openMVG_Build_{platform.system()}/"
    open_mvg_binary_folder = ("Linux-x86_64-Release" if platform.system()=="Linux" else "Windows-x86_64-RELEASE")
    cmvs_folder = current_file_path + f"/externalSoftware/CMVS_PMVS/{platform.system()}"
    #filePath = open_mvg_folder + "/software/SfM/SfM_SequentialPipeline.py"
    #script_descriptor = open(filePath)
    #a_script = script_descriptor.read()
    #sys.argv = [f"{filePath}", f"{image_folder}", f"{result_folder}", f"-f {focal_length}"]
        
    #exec(a_script)

    # Indicate the openMVG binary directory
    OPENMVG_SFM_BIN = current_file_path + "/externalSoftware/openMVG_Build_Linux/Linux-x86_64-Release"

    # Indicate the openMVG camera sensor width directory
    CAMERA_SENSOR_WIDTH_DIRECTORY = current_file_path + "/externalSoftware/sensor_width_database"
else:
    slash_replacement="\\"
    open_mvg_folder = str(current_file_path) + f"/externalSoftware/Windows/openMVG/openMVG_Build_{platform.system()}/"
    open_mvg_binary_folder = ("Linux-x86_64-RELEASE" if platform.system()=="Linux" else "Windows-AMD64-Release/Release")
    cmvs_folder = current_file_path + f"/externalSoftware/CMVS_PMVS/{platform.system()}"
    #filePath = open_mvg_folder + "/software/SfM/SfM_SequentialPipeline.py"
    #script_descriptor = open(filePath)
    #a_script = script_descriptor.read()
    #sys.argv = [f"{filePath}", f"{image_folder}", f"{result_folder}", f"-f {focal_length}"]
        
    #exec(a_script)

    # Indicate the openMVG binary directory
    OPENMVG_SFM_BIN = current_file_path + "/externalSoftware/Windows/openMVG/openMVG_Build_Windows/Windows-AMD64-Release/Release".replace("/",slash_replacement)

    # Indicate the openMVG camera sensor width directory
    CAMERA_SENSOR_WIDTH_DIRECTORY = current_file_path + "/externalSoftware/sensor_width_database".replace("/",slash_replacement)

input_dir = image_folder.replace("/",slash_replacement)
output_dir = result_folder.replace("/",slash_replacement)
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

if platform.system() == "Linux":
    print ("1. Intrinsics analysis")
    pIntrisics = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_SfMInit_ImageListing" + ("" if platform.system() == "Linux" else ".exe")),  "-i", input_dir, "-o", matches_dir, "-d", camera_file_params,"-f", focal_length] )
    pIntrisics.wait()
else:
    print ("1. Intrinsics analysis")
    pIntrisics = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_SfMInit_ImageListing" + ("" if platform.system() == "Linux" else ".exe")),  "-i", input_dir, "-o", matches_dir, "-f", focal_length] )
    pIntrisics.wait()

print ("2. Compute features")
pFeatures = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_ComputeFeatures" + ("" if platform.system() == "Linux" else ".exe")),  "-i", matches_dir+"/sfm_data.json".replace("/",slash_replacement), "-o", matches_dir, "-m", "SIFT"] )
pFeatures.wait()

print ("3. Compute matching pairs")
pPairs = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_PairGenerator" + ("" if platform.system() == "Linux" else ".exe")), "-i", matches_dir+"/sfm_data.json".replace("/",slash_replacement), "-o" , matches_dir + "/pairs.bin".replace("/",slash_replacement) ] )
pPairs.wait()

print ("4. Compute matches")
pMatches = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_ComputeMatches" + ("" if platform.system() == "Linux" else ".exe")),  "-i", matches_dir+"/sfm_data.json".replace("/",slash_replacement), "-p", matches_dir+ "/pairs.bin".replace("/",slash_replacement), "-o", matches_dir + "/matches.putative.bin".replace("/",slash_replacement) ] )
pMatches.wait()

print ("5. Filter matches" )
pFiltering = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_GeometricFilter" + ("" if platform.system() == "Linux" else ".exe")), "-i", matches_dir+"/sfm_data.json".replace("/",slash_replacement), "-m", matches_dir+"/matches.putative.bin".replace("/",slash_replacement) , "-g" , "f" , "-o" , matches_dir+"/matches.f.bin".replace("/",slash_replacement) ] )
pFiltering.wait()

# Create the reconstruction if not present
if not os.path.exists(reconstruction_dir):
    os.mkdir(reconstruction_dir)

print ("6. Do Sequential/Incremental reconstruction")
pRecons = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_SfM" + ("" if platform.system() == "Linux" else ".exe")), "--sfm_engine", "INCREMENTAL", "--input_file", matches_dir+"/sfm_data.json".replace("/",slash_replacement), "--match_dir", matches_dir, "--output_dir", reconstruction_dir] )
pRecons.wait()

print ("7. Colorize Structure")
pRecons = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, f"openMVG_main_ComputeSfM_DataColor" + ("" if platform.system() == "Linux" else ".exe")),  "-i", reconstruction_dir+"/sfm_data.bin".replace("/",slash_replacement), "-o", os.path.join(reconstruction_dir,"colorized.ply")] )
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
    os.system(f"{current_file_path}/externalSoftware".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else "\\Windows") + f"/openMVS_{platform.system()}_CPU/bin/DensifyPointCloud".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + " scene.mvs")

if depth_recon_strategy == "CMVS":
    os.system(open_mvg_folder + open_mvg_binary_folder + f"/openMVG_main_openMVG2PMVS".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + f" -i {result_folder}/reconstruction_sequential/sfm_data.bin -o {result_folder}".replace("/",slash_replacement))
    execute_pmvs_process(True)
    pmvs_ply_file = f"{result_folder}/PMVS/models/pmvs_options.txt.ply"
    if os.path.isfile(pmvs_ply_file) == False:
        execute_pmvs_process(False)
else:
    os.system(open_mvg_folder + open_mvg_binary_folder + f"/openMVG_main_openMVG2openMVS".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + f" -i {result_folder}/reconstruction_sequential/sfm_data.bin -o {result_folder}/scene.mvs -d {result_folder}/undistorted".replace("/",slash_replacement))
    execute_openMVS_process()

if depth_recon_strategy == "CMVS":
    print(f"Dense Point Cloud: {result_folder}/PMVS/models/pmvs_options.txt.ply")
else:
    os.chdir(f"{result_folder}")
    #while True:
        #if os.path.isfile("scene_dense_mesh.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else "Windows/") + f"openMVS_{platform.system()}_CPU/bin/ReconstructMesh".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + f" -d {decimate_factor} scene_dense.mvs")
        #elif os.path.isfile("scene_dense_mesh_refine.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else "Windows/") + f"openMVS_{platform.system()}_CPU/bin/RefineMesh".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + f" --resolution-level={decimate_factor} scene_dense_mesh.mvs")
        #elif os.path.isfile("scene_dense_mesh_refine_texture.mvs") == False:
    os.system(f"{current_file_path}/externalSoftware/".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else "Windows/") + f"openMVS_{platform.system()}_CPU/bin/TextureMesh".replace("/",slash_replacement) + ("" if platform.system() == "Linux" else ".exe") + " scene_dense_mesh_refine.mvs")
        #else:
        #    break

    print("Final Mesh: " + result_folder + "/scene_dense_mesh_mesh_refine_texture. ply / glb")
