#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
sudo apt-get update
wait
sudo apt-get upgrade
wait
sudo apt-get install build-essential cmake python3-numpy python3-dev python3-tk libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev libdc1394-dev libeigen3-dev libgtk-3-dev libvtk7-qt-dev
wait
wget https://github.com/opencv/opencv/archive/4.5.0.tar.gz
wait
tar -xvzf 4.5.0.tar.gz
wait
rm 4.5.0.tar.gz
wait
cd opencv-4.5.0
wait
mkdir build;cd build
wait
cmake -DBUILD_EXAMPLES=ON ..
wait
make -j4
wait
make install
wait
echo '/usr/local/lib' | sudo tee --append /etc/ld.so.conf.d/opencv.conf
wait
ldconfig
wait
echo 'PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig' | sudo tee --append ~/.bashrc
wait
echo 'export PKG_CONFIG_PATH' | sudo tee --append ~/.bashrc
wait
source ~/.bashrc