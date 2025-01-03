# This Project is not maintained - I've made a better version with a GUI: https://github.com/edin45/simple_photogrammetry_gui

# openPT3D

### Based on:
  OpenMvs: https://github.com/cdcseacave/openMVS   
  OpenMvg: https://github.com/openMVG/openMVG   
  CMVS/PMVS: https://github.com/pmoulon/CMVS-PMVS   

### Windows installation:
#### This will take about 5 minutes
```
Install Git from: https://git-scm.com/downloads  
Then open a command line window and execute these commands:  
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D
cd externalSoftware
install_windows.bat (before 0.0.3: install_build_windows.bat)
```

### Arch installation:
#### This will take about 30 minutes on a 4 core CPU
```
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D && cd externalSoftware
sh install_build_arch_cpu.sh for cpu or
sh install_build_arch_gpu.sh for gpu (CUDA)
```

### Debian/Ubuntu/Pop OS installation:  
#### This will take about 40 minutes on a 4 core CPU
```
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D && cd externalSoftware
sh install_build_debian_cpu.sh for cpu or
sh install_build_debian_gpu.sh for gpu (CUDA)
```

### Usage:  
  
Go to the openPT3D folder then execute:  

#### Windows:
```
main.exe -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```

#### Arch:  
```
python main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```

#### Debian:
```
python3 main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]
```
