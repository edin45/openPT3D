# openPT3D

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
Download python from: https://www.python.org/ftp/python/3.10.1/python-3.10.1-amd64.exe
Check "Add Python to PATH" and click Install Now
Then after installlation click the "Remove Path Length Limit button"
reboot your system
pip install numpy
pip install opencv-python
Dowload git from: https://git-scm.com/downloads
and install it (just click next you dont have to change anything)
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
#### Debian based:  
```
python3 main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
#### Arch & Windows based:
```
python main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
