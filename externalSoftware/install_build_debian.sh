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
apt-get -y install git cmake libpng-dev=1.6.37-3 libjpeg-dev=1:2.0.6-4 libtiff-dev=4.2.0-1 libglu1-mesa-dev=9.0.1-1
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
apt-get -y install libboost-iostreams-dev=1.74.0.3 libboost-program-options-dev=1.74.0.3 libboost-system-dev=1.74.0.3 libboost-serialization-dev=1.74.0.3
wait
#OpenCV (Required)
apt-get -y install libopencv-dev=4.5.1+dfsg-5
wait
#CGAL (Required)
apt-get -y install libcgal-dev=5.2-3 libcgal-qt5-dev=5.2-3
wait
#VCGLib (Required)
#git clone https://github.com/cdcseacave/VCG.git vcglib
#wait
#Ceres (Optional)
sudo apt-get -y install libatlas-base-dev=3.10.3-10 libsuitesparse-dev=1:5.8.1+dfsg-2
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
apt-get -y install freeglut3-dev=2.8.1-6 libglew-dev=2.1.0-4+b1 libglfw3-dev=3.3.2-1
wait
#OpenMVS
#git clone https://github.com/cdcseacave/openMVS.git openMVS
#wait
#mkdir openMVS_Linux_CPU && cd openMVS_Linux_CPU
#wait
#cmake . ../openMVS -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib" -DOpenMVS_USE_CUDA=OFF
#wait
#Install OpenMVS library (optional):
#make -j8
#wait
#cd ..
#wait
#git clone --recursive https://github.com/openMVG/openMVG.git
#wait
sudo apt-get install libpng-dev=1.6.37-3 libjpeg-dev=1:2.0.6-4 libtiff-dev=4.2.0-1 libxxf86vm1=1:1.1.4-1+b2 libxxf86vm-dev=1:1.1.4-1+b2 libxi-dev=2:1.7.10-1 libxrandr-dev=2:1.5.1-1
wait
sudo apt-get install graphviz=2.42.2-5
wait
sudo apt-get install cmake
#wait
#mkdir openMVG_Build_Linux
#wait
#cd openMVG_Build_Linux
#wait
#cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
#wait
#cmake --build . --target install
