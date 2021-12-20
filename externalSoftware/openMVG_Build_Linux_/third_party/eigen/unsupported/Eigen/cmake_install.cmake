# Install script for directory: /home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/eigen3/unsupported/Eigen/AdolcForward;/eigen3/unsupported/Eigen/AlignedVector3;/eigen3/unsupported/Eigen/ArpackSupport;/eigen3/unsupported/Eigen/AutoDiff;/eigen3/unsupported/Eigen/BVH;/eigen3/unsupported/Eigen/EulerAngles;/eigen3/unsupported/Eigen/FFT;/eigen3/unsupported/Eigen/IterativeSolvers;/eigen3/unsupported/Eigen/KroneckerProduct;/eigen3/unsupported/Eigen/LevenbergMarquardt;/eigen3/unsupported/Eigen/MatrixFunctions;/eigen3/unsupported/Eigen/MoreVectorization;/eigen3/unsupported/Eigen/MPRealSupport;/eigen3/unsupported/Eigen/NonLinearOptimization;/eigen3/unsupported/Eigen/NumericalDiff;/eigen3/unsupported/Eigen/OpenGLSupport;/eigen3/unsupported/Eigen/Polynomials;/eigen3/unsupported/Eigen/Skyline;/eigen3/unsupported/Eigen/SparseExtra;/eigen3/unsupported/Eigen/SpecialFunctions;/eigen3/unsupported/Eigen/Splines")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/AdolcForward"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/AlignedVector3"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/ArpackSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/AutoDiff"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/BVH"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/EulerAngles"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/FFT"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/MoreVectorization"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/MPRealSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/NumericalDiff"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/Polynomials"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/Skyline"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/SparseExtra"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/SpecialFunctions"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/eigen3/unsupported/Eigen/src")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/third_party/eigen/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

