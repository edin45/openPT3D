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
include openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/depend.make

# Include the progress variables for this target.
include openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/progress.make

# Include the compile flags for this target's objects.
include openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/flags.make

openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o: openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/flags.make
openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o: /home/edin/Python/openPT3D/openMVG/src/openMVG_Samples/features_repeatability/main_repeatability_dataset.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/Python/openPT3D/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o -c /home/edin/Python/openPT3D/openMVG/src/openMVG_Samples/features_repeatability/main_repeatability_dataset.cpp

openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.i"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/Python/openPT3D/openMVG/src/openMVG_Samples/features_repeatability/main_repeatability_dataset.cpp > CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.i

openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.s"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/Python/openPT3D/openMVG/src/openMVG_Samples/features_repeatability/main_repeatability_dataset.cpp -o CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.s

# Object files for target openMVG_sample_main_features_repeatability_dataset
openMVG_sample_main_features_repeatability_dataset_OBJECTS = \
"CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o"

# External object files for target openMVG_sample_main_features_repeatability_dataset
openMVG_sample_main_features_repeatability_dataset_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/main_repeatability_dataset.cpp.o
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/build.make
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_image.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_matching.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_multiview.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libvlsift.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libjpeg.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libpng.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libz.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libtiff.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_fast.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/gcc/x86_64-linux-gnu/11/libgomp.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libpthread.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: Linux-x86_64-RELEASE/libopenMVG_numeric.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/local/lib/libceres.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libspqr.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libtbb.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libcholmod.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libccolamd.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libcamd.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libcolamd.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libamd.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/liblapack.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libblas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libf77blas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libatlas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/librt.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libcxsparse.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/liblapack.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libblas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libf77blas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libatlas.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/librt.a
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: /usr/lib/x86_64-linux-gnu/libcxsparse.so
Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset: openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edin/Python/openPT3D/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset"
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/build: Linux-x86_64-RELEASE/openMVG_sample_main_features_repeatability_dataset

.PHONY : openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/build

openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/clean:
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/cmake_clean.cmake
.PHONY : openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/clean

openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/depend:
	cd /home/edin/Python/openPT3D/openMVG_Build_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edin/Python/openPT3D/openMVG/src /home/edin/Python/openPT3D/openMVG/src/openMVG_Samples/features_repeatability /home/edin/Python/openPT3D/openMVG_Build_Linux /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability /home/edin/Python/openPT3D/openMVG_Build_Linux/openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openMVG_Samples/features_repeatability/CMakeFiles/openMVG_sample_main_features_repeatability_dataset.dir/depend

