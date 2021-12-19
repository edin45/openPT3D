# openPT3D

### Arch installation:
```
sudo pacman -S python  
sudo pacman -S python-pip  
pip install numpy  
```
  
### Debian/Ubuntu/Pop OS installation (Untested):  
```
sudo apt update && sudo apt upgrade  
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev  
wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz  
tar -xf Python-3.10.*.tgz  
cd Python-3.10.*/  
./configure --enable-optimizations  
make -j 4  
sudo make altinstall  
sudo apt install python3-pip  
sudo pip install numpy  
```

### Usage:  
  
Go to the openPT3D folder then execute:  
#### Debian based:  
```
python3.10 main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
#### Arch based:
```
python main.py -i [FOLDER_WITH_INPUT_IMAGES_TO_USE] -r [FOLDER_WHERE_RESULTS_ARE_STORED]  
```
