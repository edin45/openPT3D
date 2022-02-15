#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
pacman -S opencv gperf
wait
pacman -S cgal
wait
pacman -S lvtk
wait
pacman -S python
wait
pacman -S python-pip
wait
pip install opencv-python
wait
pip install numpy
wait
pacman -S vtk
wait
pacman -S curl zip unzip tar
wait
#git clone https://github.com/Microsoft/vcpkg
#wait
#cd vcpkg
#wait
#./bootstrap-vcpkg.sh
#wait
#./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff
#wait
#cd ..
#wait
#wget -c "https://boostorg.jfrog.io/artifactory/main/release/1.74.0/source/boost_1_74_0.tar.bz2"
#wait
#tar -xf boost_1_74_0.tar.bz2
#wait
#cd boost_1_74_0
#wait
#./bootstrap.sh --prefix=/usr --with-python=python3 &&
#wait
#./b2 stage -j4 threading=multi link=shared
#wait
#./b2 install threading=multi link=shared           
#wait
#cd ..
#wait
pacman -S cmake libpng libjpeg libtiff mesa boost
wait
pacman -S graphviz
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
pacman -S libstdc++5 make
wait
pacman -Syu lib32-gcc-libs
wait
pacman -S gcc=libs
wait
pacman -S egl-wayland eglexternalplatform eigen gflags google-glog ninja
wait
#VCGLib (Required)
git clone https://github.com/cdcseacave/VCG.git vcglib
wait
git clone https://ceres-solver.googlesource.com/ceres-solver ceres-solver
wait
mkdir ceres_build && cd ceres_build
wait
cmake . ../ceres-solver/ -DMINIGLOG=ON -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
wait
make -j6 && sudo make install
wait
cd ..
wait
pacman -S freeglut glew glfw pugixml
wait
#OpenMVS
git clone https://github.com/cdcseacave/openMVS.git openMVS
#wget -c "https://github.com/cdcseacave/openMVS/archive/refs/tags/v2.0.tar.gz"
wait
#tar -xf v2.0.tar.gz
#wait
mkdir openMVS_Linux_CPU && cd openMVS_Linux_CPU
wait
echo "Using CPU" 
cmake . ../openMVS -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib" -DOpenMVS_USE_CUDA=OFF
wait
#Install OpenMVS library (optional):
make -j6
