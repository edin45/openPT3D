#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
git clone --recursive https://github.com/openMVG/openMVG.git
wait
dnf install libpng-dev libjpeg-dev libtiff-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev
wait
dnf install graphviz
wait
dnf install cmake
wait
mkdir openMVG_Build
wait
cd openMVG_Build
wait
cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
wait
cmake --build . --target install
