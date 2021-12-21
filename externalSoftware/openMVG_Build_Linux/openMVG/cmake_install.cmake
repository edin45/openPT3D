# Install script for directory: /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openMVG" TYPE DIRECTORY FILES "/home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG/." FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/cameras/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/clustering/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/exif/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/features/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/graph/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/graphics/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/image/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/linearProgramming/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/geodesy/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/geometry/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/matching/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/matching_image_collection/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/multiview/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/numeric/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/robust_estimation/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/tracks/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/color_harmonization/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/spherical/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/system/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/sfm/cmake_install.cmake")
  include("/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG/stl/cmake_install.cmake")

endif()

