# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/edin/Python/openPT3D/openMVG/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edin/Python/openPT3D/openMVG_Build_Linux

# Include any dependencies generated for this target.
include software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/depend.make

# Include the progress variables for this target.
include software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/progress.make

# Include the compile flags for this target's objects.
include software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/flags.make

software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o: software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/flags.make
software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o: /home/edin/Python/openPT3D/openMVG/src/software/SfM/main_ConvertMatches.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/Python/openPT3D/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o -c /home/edin/Python/openPT3D/openMVG/src/software/SfM/main_ConvertMatches.cpp

software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.i"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/Python/openPT3D/openMVG/src/software/SfM/main_ConvertMatches.cpp > CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.i

software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.s"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/Python/openPT3D/openMVG/src/software/SfM/main_ConvertMatches.cpp -o CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.s

# Object files for target openMVG_main_ConvertMatches
openMVG_main_ConvertMatches_OBJECTS = \
"CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o"

# External object files for target openMVG_main_ConvertMatches
openMVG_main_ConvertMatches_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/main_ConvertMatches.cpp.o
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/build.make
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_sfm.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_geometry.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_matching.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_fast.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_image.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/gcc/x86_64-linux-gnu/11/libgomp.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libpthread.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libjpeg.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libpng.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libz.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libtiff.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_lInftyComputerVision.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_multiview.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_linearProgramming.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/libopenMVG_numeric.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/liblib_clp.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/liblib_OsiClpSolver.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/liblib_CoinUtils.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: Linux-x86_64-RELEASE/liblib_Osi.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/local/lib/libceres.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libspqr.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libtbb.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libcholmod.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libccolamd.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libcamd.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libcolamd.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libamd.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/liblapack.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libblas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libf77blas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libatlas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/librt.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libcxsparse.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/liblapack.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libblas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libf77blas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libatlas.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/librt.a
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: /usr/lib/x86_64-linux-gnu/libcxsparse.so
Linux-x86_64-RELEASE/openMVG_main_ConvertMatches: software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edin/Python/openPT3D/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Linux-x86_64-RELEASE/openMVG_main_ConvertMatches"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_main_ConvertMatches.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/build: Linux-x86_64-RELEASE/openMVG_main_ConvertMatches

.PHONY : software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/build

software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/clean:
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_main_ConvertMatches.dir/cmake_clean.cmake
.PHONY : software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/clean

software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/depend:
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edin/Python/openPT3D/openMVG/src /home/edin/Python/openPT3D/openMVG/src/software/SfM /home/edin/Python/openPT3D/openMVG_Build_Linux /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM /home/edin/Python/openPT3D/openMVG_Build_Linux/software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : software/SfM/CMakeFiles/openMVG_main_ConvertMatches.dir/depend

