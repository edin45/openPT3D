# openPT3D
  
### Debian/Ubuntu/Pop OS installation:  
```
sudo apt update && sudo apt upgrade  
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev  
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz  
tar -xf Python-3.9.*.tgz  
cd Python-3.9.*/  
./configure --enable-optimizations  
make -j 4  
sudo make altinstall  
cd ..
sudo apt install python3-pip  
sudo pip install numpy  
sudo pip install opencv-python
git clone --recursive https://github.com/edin45/openPT3D.git
cd openPT3D && cd externalSoftware
sh install_build_debian.sh
```
### Windows installation:
```
Download python from: https://www.python.org/ftp/python/3.10.1/python-3.10.1-amd64.exe
Check "Add Python to PATH" and continue
Then after installlation click the "Remove Path Length Limit button"
reboot your system
pip install numpy
git clone --recursive https://github.com/edin45/openPT3D.git
cd openPT3D
cd externalSoftware
Run: install_build_windows.bat
```

### Arch installation (Broken, is being worked on):
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
