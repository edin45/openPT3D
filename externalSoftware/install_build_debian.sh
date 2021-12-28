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
apt install libopencv-calib3d-dev
apt install libopencv-contrib-dev
apt install libopencv-core-dev
apt install libopencv-dnn-dev
apt install libopencv-features2d-dev
apt install libopencv-flann-dev
apt install libopencv-highgui-dev
apt install libopencv-imgcodecs-dev
apt install libopencv-imgproc-dev
apt install libopencv-ml-dev
apt install libopencv-objdetect-dev
apt install libopencv-photo-dev
apt install libopencv-shape-dev
apt install libopencv-stitching-dev
apt install libopencv-superres-dev
apt install libopencv-video-dev
apt install libopencv-videoio-dev
apt install libopencv-videostab-dev
apt install libopencv-viz-dev
apt install libopencv-calib3d4.5
apt install libopencv-contrib4.5
apt install libopencv-features2d4.5
apt install libopencv-highgui4.5
apt install libopencv-imgcodecs4.5
apt install libopencv-imgproc4.5
apt install libopencv-videoio4.5
apt install libilmbase-dev
wait
wget -c 'http://ftp.de.debian.org/debian/pool/main/libp/libpng1.6/libpng-dev_1.6.37-3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-dev_2.0.6-4_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/t/tiff/libtiff-dev_4.2.0-1_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/libg/libglu/libglu1-mesa-dev_9.0.1-1_amd64.deb'
wait
dpkg -i libpng-dev_1.6.37-3_amd64.deb
dpkg -i libjpeg-dev_2.0.6-4_amd64.deb
dpkg -i libtiff-dev_4.2.0-1_amd64.deb
dpkg -i libglu1-mesa-dev_9.0.1-1_amd64.deb
wait
apt-get -y install git cmake 
#libpng-dev=1.6.37-3 libjpeg-dev=1:2.0.6-4 libtiff-dev=4.2.0-1 libglu1-mesa-dev=9.0.1-1
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
wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-iostreams-dev_1.74.0.3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-program-options-dev_1.74.0.3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-system-dev_1.74.0.3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-serialization-dev_1.74.0.3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-dev_4.5.1+dfsg-5_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/c/cgal/libcgal-dev_5.2-3_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/c/cgal/libcgal-qt5-dev_5.2-3_amd64.deb'
wait
#apt-get -y install libboost-iostreams-dev=1.74.0.3 libboost-program-options-dev=1.74.0.3 libboost-system-dev=1.74.0.3 libboost-serialization-dev=1.74.0.3
#Boost (Required)
dpkg -i libboost-iostreams-dev_1.74.0.3_amd64.deb
dpkg -i libboost-program-options-dev_1.74.0.3_amd64.deb
dpkg -i libboost-system-dev_1.74.0.3_amd64.deb
dpkg -i libboost-serialization-dev_1.74.0.3_amd64.deb
#OpenCV
dpkg -i libopencv-dev_4.5.1+dfsg-5_amd64.deb
#CGAL
dpkg -i libcgal-dev_5.2-3_amd64.deb
dpkg -i libcgal-qt5-dev_5.2-3_amd64.deb
#wait
#apt-get -y install libcgal-dev=5.2-3 libcgal-qt5-dev=5.2-3
wait
#Ceres (Optional)
wget -c 'http://ftp.de.debian.org/debian/pool/main/a/atlas/libatlas-base-dev_3.10.3-10_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/s/suitesparse/libsuitesparse-dev_5.8.1+dfsg-2_amd64.deb'
dpkg -i libatlas-base-dev_3.10.3-10_amd64.deb
dkpg -i libsuitesparse-dev_5.8.1+dfsg-2_amd64.deb
#sudo apt-get -y install libatlas-base-dev=3.10.3-10 libsuitesparse-dev=1:5.8.1+dfsg-2
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
#apt-get -y install freeglut3-dev=2.8.1-6 libglew-dev=2.1.0-4+b1 libglfw3-dev=3.3.2-1
#wait
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
wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxxf86vm/libxxf86vm1_1.1.4-1+b2_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxxf86vm/libxxf86vm-dev_1.1.4-1+b2_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxi/libxi-dev_1.7.10-1_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxrandr/libxrandr-dev_1.5.1-1_amd64.deb'
wget -c 'http://ftp.de.debian.org/debian/pool/main/g/graphviz/graphviz_2.42.2-5_amd64.deb'
dpkg -i libxxf86vm1_1.1.4-1+b2_amd64.deb
dpkg -i libxxf86vm-dev_1.1.4-1+b2_amd64.deb
dpkg -i libxi-dev_1.7.10-1_amd64.deb
dpkg -i libxrandr-dev_1.5.1-1_amd64.deb
dpkg -i graphviz_2.42.2-5_amd64.deb
#sudo apt-get install libpng-dev=1.6.37-3 libjpeg-dev=1:2.0.6-4 libtiff-dev=4.2.0-1 libxxf86vm1=1:1.1.4-1+b2 libxxf86vm-dev=1:1.1.4-1+b2 libxi-dev=2:1.7.10-1 libxrandr-dev=2:1.5.1-1
#wait
#sudo apt-get install graphviz=2.42.2-5
#wait
#sudo apt-get install cmake
#wait
#mkdir openMVG_Build_Linux
#wait
#cd openMVG_Build_Linux
#wait
#cmake -DCMAKE_BUILD_TYPE=RELEASE ../openMVG/src/
#wait
#cmake --build . --target install
