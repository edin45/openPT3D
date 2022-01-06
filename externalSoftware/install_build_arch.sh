#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
pacman -S curl zip unzip tar
wait
git clone https://github.com/Microsoft/vcpkg
wait
cd vcpkg
wait
./bootstrap-vcpkg.sh
wait
./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff