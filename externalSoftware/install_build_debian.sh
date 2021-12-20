#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
git clone --recursive https://github.com/openMVG/openMVG.git
wait
sudo apt-get install libpng-dev libjpeg-dev libtiff-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev
wait
sudo apt-get install graphviz
wait
sudo apt-get install cmake
wait
mkdir openMVG_Build_Linux
wait
cd openMVG_Build_Linux
wait
cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
wait
cmake --build . --target install
