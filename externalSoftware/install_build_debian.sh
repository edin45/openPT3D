#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
if [ $# -ne 2 ]; then
  echo "Please specify what device OpenMVS (Depth Reconstruction) should use, specify CPU / GPU with -d cpu or -d gpu"
  exit
fi
while getopts ":d:" opt; do
  case $opt in
    d)
      if [ "$OPTARG" == "cpu" ]; then
        echo "Using CPU"
      fi
      if [ "$OPTARG" == "gpu" ]; then
        echo "Using GPU"
      fi

      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
sudo apt update && sudo apt upgrade  
wait
python3.9 -m pip install opencv-python
wait
python3.9 -m pip install numpy
wait
apt install curl zip unzip tar bison libopencv-dev gperf autoconf libjpeg62-dev
#wget -c "http://ftp.de.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-dev_2.0.6-4_amd64.deb"
#wait
#dpkg -i libjpeg-dev_2.0.6-4_amd64.deb
wait
git clone https://github.com/Microsoft/vcpkg
wait
cd vcpkg
wait
./bootstrap-vcpkg.sh
wait
./vcpkg install cereal ceres eigen3 libpng tiff opencv
wait
cd ..
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
wait
cd ..
#Prepare and empty machine for building:
sudo apt-get update -qq && sudo apt-get install -qq
wait
sudo apt-get -y install git cmake libpng-dev libjpeg-dev libtiff-dev libglu1-mesa-dev
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
sudo apt-get -y install libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-serialization-dev
wait
#OpenCV (Required)
sudo apt-get -y install libopencv-dev
wait
#CGAL (Required)
sudo apt-get -y install libcgal-dev libcgal-qt5-dev
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
sudo apt-get -y install freeglut3-dev libglew-dev libglfw3-dev
wait
#OpenMVS
wget -c "https://github.com/cdcseacave/openMVS/archive/refs/tags/v2.0.tar.gz"
wait
tar -xf v2.0.tar.gz
wait
mkdir openMVS_Linux_CPU && cd openMVS_Linux_CPU
wait
while getopts ":d:" opt; do
  case $opt in
    d)
      if [ "$OPTARG" == "cpu" ]; then
        echo "Using CPU"
        cmake . ../openMVS-2.0 -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib" -DOpenMVS_USE_CUDA=OFF
      fi
      if [ "$OPTARG" == "gpu" ]; then
        echo "Using GPU"
        cmake . ../openMVS-2.0 -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib"
      fi

      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
wait
#Install OpenMVS library (optional):
make -j6