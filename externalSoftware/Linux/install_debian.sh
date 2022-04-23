if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
apt-get -y update && apt-get -y upgrade  
wait
apt-get -y install python3 python3-pip
wait
pip3 install opencv-python
wait
pip3 install numpy
wait
apt-get -y install libboost1.74-all-dev libopencv-imgcodecs4.5 libopencv-calib3d4.5 libopencv-highgui4.5 libjpeg62 libpng16-16 libtiff5