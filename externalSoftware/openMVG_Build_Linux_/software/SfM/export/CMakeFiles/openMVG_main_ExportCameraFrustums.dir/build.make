# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/edins/Python/openPT3D/externalSoftware/openMVG/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux

# Include any dependencies generated for this target.
include software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/compiler_depend.make

# Include the progress variables for this target.
include software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/progress.make

# Include the compile flags for this target's objects.
include software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/flags.make

software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o: software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/flags.make
software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o: /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/SfM/export/main_ExportCameraFrustums.cpp
software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o: software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o -MF CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o.d -o CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o -c /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/SfM/export/main_ExportCameraFrustums.cpp

software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.i"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/SfM/export/main_ExportCameraFrustums.cpp > CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.i

software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.s"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/SfM/export/main_ExportCameraFrustums.cpp -o CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.s

# Object files for target openMVG_main_ExportCameraFrustums
openMVG_main_ExportCameraFrustums_OBJECTS = \
"CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o"

# External object files for target openMVG_main_ExportCameraFrustums
openMVG_main_ExportCameraFrustums_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/main_ExportCameraFrustums.cpp.o
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/build.make
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_sfm.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_geometry.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_matching.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_fast.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_image.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libgomp.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libpthread.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libjpeg.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libpng.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libz.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libtiff.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_lInftyComputerVision.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_multiview.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_linearProgramming.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_numeric.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/liblib_clp.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/liblib_OsiClpSolver.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/liblib_CoinUtils.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/liblib_Osi.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: third_party/ceres-solver/lib/libopenMVG_ceres.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: Linux-x86_64-RELEASE/libopenMVG_cxsparse.a
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/liblapack.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: /usr/lib/libblas.so
Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums: software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_main_ExportCameraFrustums.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/build: Linux-x86_64-RELEASE/openMVG_main_ExportCameraFrustums
.PHONY : software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/build

software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/clean:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_main_ExportCameraFrustums.dir/cmake_clean.cmake
.PHONY : software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/clean

software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/depend:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edins/Python/openPT3D/externalSoftware/openMVG/src /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/SfM/export /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : software/SfM/export/CMakeFiles/openMVG_main_ExportCameraFrustums.dir/depend

