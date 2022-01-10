#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
sudo apt update && sudo apt upgrade  
wait
apt install curl zip unzip tar bison libopencv-dev gperf autoconf
wget -c "http://ftp.de.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-dev_2.0.6-4_amd64.deb"
wait
dpkg -i libjpeg-dev_2.0.6-4_amd64.deb
wait
git clone https://github.com/Microsoft/vcpkg
wait
cd vcpkg
wait
./bootstrap-vcpkg.sh
wait
./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff opencv
wait
wget -c "https://boostorg.jfrog.io/artifactory/main/release/1.74.0/source/boost_1_74_0.tar.bz2"
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
