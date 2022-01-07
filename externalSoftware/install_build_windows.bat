git clone https://github.com/Microsoft/vcpkg
cd vcpkg
./bootstrap-vcpkg.bat
./vcpkg install cereal ceres eigen3 libjpeg-turbo libpng tiff
curl https://boostorg.jfrog.io/artifactory/main/release/1.74.0/source/boost_1_74_0.zip
cd boost_1_74_0
./bootstrap.bat --prefix=/usr --with-python=python3
./b2 stage -j4 threading=multi link=shared
./b2 install threading=multi link=shared