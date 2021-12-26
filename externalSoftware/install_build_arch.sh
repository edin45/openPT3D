#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
pacman -S python
wait
pacman -S python-pip
wait
pip install numpy
wait
pacman -S opencv
wait
pacman -S cgal
wait
pacman -S lvtk
wait
pacman -S vtk
wait
#git clone --recursive https://github.com/openMVG/openMVG.git
#wait
pacman -S libpng libjpeg libtiff libxxf86vm1 libxxf86vm libxi libxrandr
wait
pacman -S graphviz
wait
pacman -S cmake
#wait
#mkdir openMVG_Build_Linux
#wait
#cd openMVG_Build_Linux
#wait
#cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
#wait
#cmake --build . --target install