# openPT3D

## Note: The Linux installation is currently broken - Is being worked on

### Based on:
  OpenMvs: https://github.com/cdcseacave/openMVS   
  OpenMvg: https://github.com/openMVG/openMVG   
  CMVS/PMVS: https://github.com/pmoulon/CMVS-PMVS   

### Debian/Ubuntu/Pop OS installation:  
```
git clone --recursive https://github.com/edin45/openPT3D.git
cd openPT3D && cd externalSoftware
sh install_python3_debian.sh
sh install_build_debian.sh
```
### Windows installation:
```
git clone --recursive https://github.com/edin45/openPT3D.git
cd openPT3D
cd externalSoftware
install_build_windows.bat
```

### Arch installation:
```
git clone --recursive https://github.com/edin45/openPT3D.git
cd openPT3D && cd externalSoftware
sh install_build_arch.sh
```

### Usage:  
  
Go to the openPT3D folder then execute:  
#### Linux:  
```
python main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
#### Windows:
```
main.exe -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
