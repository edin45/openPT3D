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
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-calib3d-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-contrib-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-core-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-dnn-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-features2d-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-flann-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-highgui-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-imgcodecs-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-imgproc-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-ml-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-objdetect-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-photo-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-shape-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-stitching-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-superres-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-video-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-videoio-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-videostab-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-viz-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-calib3d4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-contrib4.5_4.5.1+dfsg-5_amd64.deb'
##wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-features2d4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-highgui4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-imgcodecs4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-imgproc4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-videoio4.5_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/i/ilmbase/libilmbase-dev_4.5.1+dfsg-5_amd64.deb'

#wget -c 'http://ftp.de.debian.org/debian/pool/main/libp/libpng1.6/libpng-dev_1.6.37-3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-dev_2.0.6-4_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/t/tiff/libtiff-dev_4.2.0-1_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libg/libglu/libglu1-mesa-dev_9.0.1-1_amd64.deb'
wait
#dpkg -i libpng-dev_1.6.37-3_amd64.deb
#dpkg -i libjpeg-dev_2.0.6-4_amd64.deb
#dpkg -i libtiff-dev_4.2.0-1_amd64.deb
#dpkg -i libglu1-mesa-dev_9.0.1-1_amd64.deb

#dpkg -i libopencv-calib3d-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-contrib-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-core-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-dnn-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-features2d-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-flann-dev_4.5.1+dfsg-5_amd64.deb
##dpkg -i libopencv-highgui-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-imgcodecs-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-imgproc-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-ml-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-objdetect-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-photo-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-shape-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-stitching-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-superres-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-video-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-videoio-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-videostab-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-viz-dev_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-calib3d4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-contrib4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-features2d4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-highgui4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-imgcodecs4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-imgproc4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libopencv-videoio4.5_4.5.1+dfsg-5_amd64.deb
#dpkg -i libilmbase-dev_4.5.1+dfsg-5_amd64.deb
#wait
#apt-get -f install
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
#wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-iostreams-dev_1.74.0.3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-program-options-dev_1.74.0.3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-system-dev_1.74.0.3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/b/boost-defaults/libboost-serialization-dev_1.74.0.3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/o/opencv/libopencv-dev_4.5.1+dfsg-5_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/c/cgal/libcgal-dev_5.2-3_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/c/cgal/libcgal-qt5-dev_5.2-3_amd64.deb'
#wait
apt-get -y install libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-serialization-dev
#Boost (Required)
#dpkg -i libboost-iostreams-dev_1.74.0.3_amd64.deb
#dpkg -i libboost-program-options-dev_1.74.0.3_amd64.deb
#dpkg -i libboost-system-dev_1.74.0.3_amd64.deb
#dpkg -i libboost-serialization-dev_1.74.0.3_amd64.deb
#OpenCV
#dpkg -i libopencv-dev_4.5.1+dfsg-5_amd64.deb
#CGAL
#dpkg -i libcgal-dev_5.2-3_amd64.deb
#dpkg -i libcgal-qt5-dev_5.2-3_amd64.deb
wait
apt-get -y install libcgal-dev libcgal-qt5-dev
wait
#Ceres (Optional)
#wget -c 'http://ftp.de.debian.org/debian/pool/main/a/atlas/libatlas-base-dev_3.10.3-10_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/s/suitesparse/libsuitesparse-dev_5.8.1+dfsg-2_amd64.deb'
#dpkg -i libatlas-base-dev_3.10.3-10_amd64.deb
#dkpg -i libsuitesparse-dev_5.8.1+dfsg-2_amd64.deb
apt-get -y install libatlas-base-dev libsuitesparse-dev
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
Install OpenMVS library (optional):
make -j8
wait
cd ..
wait
git clone --recursive https://github.com/openMVG/openMVG.git
wait
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxxf86vm/libxxf86vm1_1.1.4-1+b2_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxxf86vm/libxxf86vm-dev_1.1.4-1+b2_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxi/libxi-dev_1.7.10-1_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/libx/libxrandr/libxrandr-dev_1.5.1-1_amd64.deb'
#wget -c 'http://ftp.de.debian.org/debian/pool/main/g/graphviz/graphviz_2.42.2-5_amd64.deb'
#dpkg -i libxxf86vm1_1.1.4-1+b2_amd64.deb
#dpkg -i libxxf86vm-dev_1.1.4-1+b2_amd64.deb
#dpkg -i libxi-dev_1.7.10-1_amd64.deb
#dpkg -i libxrandr-dev_1.5.1-1_amd64.deb
#dpkg -i graphviz_2.42.2-5_amd64.deb
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
