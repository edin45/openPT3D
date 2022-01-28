# openPT3D

### Based on:
  OpenMvs: https://github.com/cdcseacave/openMVS   
  OpenMvg: https://github.com/openMVG/openMVG   
  CMVS/PMVS: https://github.com/pmoulon/CMVS-PMVS   

### Windows installation:
#### This will take about 10 minutes
```
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D
cd externalSoftware
install_build_windows.bat
```

### Arch installation:
#### This will take about 30 minutes on a 4 core CPU
```
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D && cd externalSoftware
sh install_build_arch.sh
```

### Debian/Ubuntu/Pop OS installation:  
#### This will take about 40 minutes on a 4 core CPU
```
git clone --recursive https://github.com/edin45/openPT3D.git (or unzip the zip you download from the stable release)
cd openPT3D && cd externalSoftware
sh install_python3_debian.sh
sh install_build_debian.sh
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
python3.9 main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]
```
