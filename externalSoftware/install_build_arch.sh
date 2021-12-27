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
pacman -S libpng libjpeg6 libtiff4 libxxf86vm1 libxxf86vm libxi libxrandr
wait
pacman -S graphviz
wait
pacman -S cmake
wait
#pacman -S boost
wget https://dl.bintray.com/boostorg/release/1.74.0/source/boost_1_74_0.tar.bz2
wait
tar -xf boost_1_74_0.tar.bz2
wait
cd boost_1_74_0
wait
./bootstrap.sh --prefix=/usr --with-python=python3
wait
./b2 stage -j4 threading=multi link=shared
wait
./b2 install threading=multi link=shared      
wait
cd ..     
#wait
#mkdir openMVG_Build_Linux
#wait
#cd openMVG_Build_Linux
#wait
#cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
#wait
#cmake --build . --target install