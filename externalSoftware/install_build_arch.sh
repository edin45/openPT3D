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
pip install opencv-python
wait
pacman -S opencv
wait
pacman -S cgal
wait
pacman -S lvtk
wait
pacman -S vtk
wait
pacman -S curl zip unzip tar
wait
git clone https://github.com/Microsoft/vcpkg
wait
cd vcpkg
wait
./bootstrap-vcpkg.sh
wait
./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff
wait
wget -c "https://dl.bintray.com/boostorg/release/1.74.0/source/boost_1_74_0.tar.bz2"
wait
tar -xf boost_1_74_0.tar.bz2
wait
cd boost_1_74_0
wait
./bootstrap.sh --prefix=/usr --with-python=python3 &&
wait
./b2 stage -j4 threading=multi link=shared
wait
./b2 install threading=multi link=shared           