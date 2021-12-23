# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget cereal lib_CoinUtils lib_Osi lib_clp lib_OsiClpSolver openMVG_stlplus openMVG_lemon openMVG_easyexif openMVG_fast openMVG_camera openMVG_exif openMVG_features openMVG_graph openMVG_image openMVG_linearProgramming openMVG_lInftyComputerVision openMVG_geodesy openMVG_geometry openMVG_matching openMVG_kvld openMVG_matching_image_collection openMVG_multiview openMVG_numeric openMVG_robust_estimation openMVG_system openMVG_sfm vlsift)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target cereal
add_library(cereal INTERFACE IMPORTED)

set_target_properties(cereal PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/openMVG_dependencies/cereal/include"
)

# Create imported target lib_CoinUtils
add_library(lib_CoinUtils STATIC IMPORTED)

# Create imported target lib_Osi
add_library(lib_Osi STATIC IMPORTED)

# Create imported target lib_clp
add_library(lib_clp STATIC IMPORTED)

# Create imported target lib_OsiClpSolver
add_library(lib_OsiClpSolver STATIC IMPORTED)

# Create imported target openMVG_stlplus
add_library(openMVG_stlplus STATIC IMPORTED)

set_target_properties(openMVG_stlplus PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/usr/local/include/openMVG;/usr/local/include/openMVG/third_party/stlplus3/filesystemSimplified"
)

# Create imported target openMVG_lemon
add_library(openMVG_lemon INTERFACE IMPORTED)

set_target_properties(openMVG_lemon PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "LEMON_ONLY_TEMPLATES"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/openMVG/third_party/lemon;${_IMPORT_PREFIX}/include/openMVG/third_party"
)

# Create imported target openMVG_easyexif
add_library(openMVG_easyexif STATIC IMPORTED)

# Create imported target openMVG_fast
add_library(openMVG_fast STATIC IMPORTED)

# Create imported target openMVG_camera
add_library(openMVG_camera INTERFACE IMPORTED)

set_target_properties(openMVG_camera PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric;cereal;OpenMP::OpenMP_CXX"
)

# Create imported target openMVG_exif
add_library(openMVG_exif STATIC IMPORTED)

set_target_properties(openMVG_exif PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:openMVG_easyexif>"
)

# Create imported target openMVG_features
add_library(openMVG_features STATIC IMPORTED)

set_target_properties(openMVG_features PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "-march=skylake;-msse2;-msse3;-mssse3;-msse4.1;-msse4.2;-mavx;-mfma;-mbmi2;-mavx2;-mno-sse4a;-mno-xop;-mno-fma4;-mno-avx512f;-mno-avx512vl;-mno-avx512pf;-mno-avx512er;-mno-avx512cd;-mno-avx512dq;-mno-avx512bw;-mno-avx512ifma;-mno-avx512vbmi"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/openMVG"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:openMVG_fast>;\$<LINK_ONLY:openMVG_stlplus>;OpenMP::OpenMP_CXX;cereal"
)

# Create imported target openMVG_graph
add_library(openMVG_graph INTERFACE IMPORTED)

set_target_properties(openMVG_graph PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_LINK_LIBRARIES "openMVG_lemon"
)

# Create imported target openMVG_image
add_library(openMVG_image STATIC IMPORTED)

set_target_properties(openMVG_image PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric;OpenMP::OpenMP_CXX;/usr/lib/x86_64-linux-gnu/libjpeg.so;/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libtiff.so"
)

# Create imported target openMVG_linearProgramming
add_library(openMVG_linearProgramming STATIC IMPORTED)

set_target_properties(openMVG_linearProgramming PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric;\$<LINK_ONLY:lib_clp>;\$<LINK_ONLY:lib_OsiClpSolver>;\$<LINK_ONLY:lib_CoinUtils>;\$<LINK_ONLY:lib_Osi>"
)

# Create imported target openMVG_lInftyComputerVision
add_library(openMVG_lInftyComputerVision STATIC IMPORTED)

set_target_properties(openMVG_lInftyComputerVision PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_LINK_LIBRARIES "openMVG_linearProgramming;openMVG_multiview"
)

# Create imported target openMVG_geodesy
add_library(openMVG_geodesy INTERFACE IMPORTED)

set_target_properties(openMVG_geodesy PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric"
)

# Create imported target openMVG_geometry
add_library(openMVG_geometry STATIC IMPORTED)

set_target_properties(openMVG_geometry PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric;cereal;\$<LINK_ONLY:openMVG_linearProgramming>"
)

# Create imported target openMVG_matching
add_library(openMVG_matching STATIC IMPORTED)

set_target_properties(openMVG_matching PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "-DOPENMVG_USE_AVX2;-mavx2;-DOPENMVG_USE_AVX;-mavx"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/openMVG"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:openMVG_stlplus>;\$<LINK_ONLY:OpenMP::OpenMP_CXX>;openMVG_features;Threads::Threads;cereal"
)

# Create imported target openMVG_kvld
add_library(openMVG_kvld STATIC IMPORTED)

set_target_properties(openMVG_kvld PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_LINK_LIBRARIES "openMVG_features;openMVG_image"
)

# Create imported target openMVG_matching_image_collection
add_library(openMVG_matching_image_collection STATIC IMPORTED)

set_target_properties(openMVG_matching_image_collection PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/openMVG"
  INTERFACE_LINK_LIBRARIES "openMVG_matching;openMVG_multiview;OpenMP::OpenMP_CXX"
)

# Create imported target openMVG_multiview
add_library(openMVG_multiview STATIC IMPORTED)

set_target_properties(openMVG_multiview PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric;\$<LINK_ONLY:openMVG_graph>;\$<LINK_ONLY:Ceres::ceres>"
)

# Create imported target openMVG_numeric
add_library(openMVG_numeric STATIC IMPORTED)

set_target_properties(openMVG_numeric PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "-march=skylake;-msse2;-msse3;-mssse3;-msse4.1;-msse4.2;-mavx;-mfma;-mbmi2;-mavx2;-mno-sse4a;-mno-xop;-mno-fma4;-mno-avx512f;-mno-avx512vl;-mno-avx512pf;-mno-avx512er;-mno-avx512cd;-mno-avx512dq;-mno-avx512bw;-mno-avx512ifma;-mno-avx512vbmi"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;/usr/local/include/eigen3"
)

# Create imported target openMVG_robust_estimation
add_library(openMVG_robust_estimation STATIC IMPORTED)

set_target_properties(openMVG_robust_estimation PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/openMVG"
  INTERFACE_LINK_LIBRARIES "openMVG_numeric"
)

# Create imported target openMVG_system
add_library(openMVG_system STATIC IMPORTED)

set_target_properties(openMVG_system PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
)

# Create imported target openMVG_sfm
add_library(openMVG_sfm STATIC IMPORTED)

set_target_properties(openMVG_sfm PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/openMVG"
  INTERFACE_LINK_LIBRARIES "openMVG_geometry;openMVG_features;openMVG_graph;openMVG_matching;openMVG_multiview;cereal;OpenMP::OpenMP_CXX;\$<LINK_ONLY:openMVG_image>;\$<LINK_ONLY:openMVG_lInftyComputerVision>;\$<LINK_ONLY:openMVG_system>;\$<LINK_ONLY:Ceres::ceres>;\$<LINK_ONLY:openMVG_stlplus>"
)

# Create imported target vlsift
add_library(vlsift STATIC IMPORTED)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/openMVG-targets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
