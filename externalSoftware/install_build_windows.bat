CALL git clone https://github.com/Microsoft/vcpkg
CALL cd vcpkg
CALL .\bootstrap-vcpkg.bat
CALL .\vcpkg.exe install cereal ceres eigen3 libjpeg-turbo libpng tiff boost
CALL cd ..
CALL VC_redist.x64.exe