#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
apt-get update
wait
apt-get upgrade
wait
apt-get update -qq && apt-get install -qq
wait
apt-get -y install git cmake libpng-dev libjpeg-dev libtiff-dev libglu1-mesa-dev
wait
main_path=`pwd`
wait
#Eigen (Required)
git clone https://gitlab.com/libeigen/eigen.git --branch 3.4
wait
mkdir eigen_build && cd eigen_build
wait
cmake . ../eigen
wait
make && sudo make install
wait
cd ..
wait
#Boost (Required)
apt-get -y install libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-serialization-dev
wait
#OpenCV (Required)
apt-get -y install libopencv-dev
wait
#CGAL (Required)
apt-get -y install libcgal-dev libcgal-qt5-dev
wait
#VCGLib (Required)
git clone https://github.com/cdcseacave/VCG.git vcglib
wait
#Ceres (Optional)
sudo apt-get -y install libatlas-base-dev libsuitesparse-dev
wait
git clone https://ceres-solver.googlesource.com/ceres-solver ceres-solver
wait
mkdir ceres_build && cd ceres_build
wait
cmake . ../ceres-solver/ -DMINIGLOG=ON -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
wait
make -j2 && sudo make install
wait
cd ..
wait
#GLFW3 (Optional)
apt-get -y install freeglut3-dev libglew-dev libglfw3-dev
wait
#OpenMVS
git clone https://github.com/cdcseacave/openMVS.git openMVS
wait
mkdir openMVS_Linux_CPU && cd openMVS_Linux_CPU
wait
cmake . ../openMVS -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib" -DOpenMVS_USE_CUDA=OFF
wait
#Install OpenMVS library (optional):
make -j8
wait
cd ..
wait
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
