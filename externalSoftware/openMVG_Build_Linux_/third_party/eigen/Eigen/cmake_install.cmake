# Install script for directory: /home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen

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
   "/eigen3/Eigen/Cholesky;/eigen3/Eigen/CholmodSupport;/eigen3/Eigen/Core;/eigen3/Eigen/Dense;/eigen3/Eigen/Eigen;/eigen3/Eigen/Eigenvalues;/eigen3/Eigen/Geometry;/eigen3/Eigen/Householder;/eigen3/Eigen/IterativeLinearSolvers;/eigen3/Eigen/Jacobi;/eigen3/Eigen/KLUSupport;/eigen3/Eigen/LU;/eigen3/Eigen/MetisSupport;/eigen3/Eigen/OrderingMethods;/eigen3/Eigen/PaStiXSupport;/eigen3/Eigen/PardisoSupport;/eigen3/Eigen/QR;/eigen3/Eigen/QtAlignedMalloc;/eigen3/Eigen/SPQRSupport;/eigen3/Eigen/SVD;/eigen3/Eigen/Sparse;/eigen3/Eigen/SparseCholesky;/eigen3/Eigen/SparseCore;/eigen3/Eigen/SparseLU;/eigen3/Eigen/SparseQR;/eigen3/Eigen/StdDeque;/eigen3/Eigen/StdList;/eigen3/Eigen/StdVector;/eigen3/Eigen/SuperLUSupport;/eigen3/Eigen/UmfPackSupport")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/eigen3/Eigen" TYPE FILE FILES
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Cholesky"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/CholmodSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Core"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Dense"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Eigen"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Eigenvalues"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Geometry"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Householder"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/IterativeLinearSolvers"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Jacobi"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/KLUSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/LU"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/MetisSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/OrderingMethods"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/PaStiXSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/PardisoSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/QR"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/QtAlignedMalloc"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SPQRSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SVD"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/Sparse"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SparseCholesky"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SparseCore"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SparseLU"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SparseQR"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/StdDeque"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/StdList"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/StdVector"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/SuperLUSupport"
    "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/eigen3/Eigen/src")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/eigen3/Eigen" TYPE DIRECTORY FILES "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/third_party/eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

