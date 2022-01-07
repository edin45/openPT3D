git clone https://github.com/Microsoft/vcpkg
cd vcpkg
.\bootstrap-vcpkg.bat
.\vcpkg.exe install cereal ceres eigen3 libjpeg-turbo libpng tiff boost
cd ..
VC_redist.x64.exe