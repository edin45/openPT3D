#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
git clone https://github.com/Microsoft/vcpkg
wait
cd vcpkg
wait
./bootstrap-vcpkg.sh
wait
./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff