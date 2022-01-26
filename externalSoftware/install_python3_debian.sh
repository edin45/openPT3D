#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please run as root!"
   exit 1
fi
sudo apt update && sudo apt upgrade  
wait
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev  
wait
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz  
wait
tar -xf Python-3.9.*.tgz  
wait
cd Python-3.9.*/  
wait
./configure --enable-optimizations  
wait
make -j 4  
wait
sudo make altinstall  
wait
cd ..