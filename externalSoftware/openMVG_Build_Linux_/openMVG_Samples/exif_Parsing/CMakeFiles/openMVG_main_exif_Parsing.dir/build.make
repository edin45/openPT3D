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
include openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/compiler_depend.make

# Include the progress variables for this target.
include openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/progress.make

# Include the compile flags for this target's objects.
include openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/flags.make

openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o: openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/flags.make
openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o: /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG_Samples/exif_Parsing/exifParsing.cpp
openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o: openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o -MF CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o.d -o CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o -c /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG_Samples/exif_Parsing/exifParsing.cpp

openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.i"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG_Samples/exif_Parsing/exifParsing.cpp > CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.i

openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.s"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG_Samples/exif_Parsing/exifParsing.cpp -o CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.s

# Object files for target openMVG_main_exif_Parsing
openMVG_main_exif_Parsing_OBJECTS = \
"CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o"

# External object files for target openMVG_main_exif_Parsing
openMVG_main_exif_Parsing_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/openMVG_main_exif_Parsing: openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/exifParsing.cpp.o
Linux-x86_64-RELEASE/openMVG_main_exif_Parsing: openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/build.make
Linux-x86_64-RELEASE/openMVG_main_exif_Parsing: Linux-x86_64-RELEASE/libopenMVG_exif.a
Linux-x86_64-RELEASE/openMVG_main_exif_Parsing: Linux-x86_64-RELEASE/libopenMVG_easyexif.a
Linux-x86_64-RELEASE/openMVG_main_exif_Parsing: openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Linux-x86_64-RELEASE/openMVG_main_exif_Parsing"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_main_exif_Parsing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/build: Linux-x86_64-RELEASE/openMVG_main_exif_Parsing
.PHONY : openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/build

openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/clean:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_main_exif_Parsing.dir/cmake_clean.cmake
.PHONY : openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/clean

openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/depend:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edins/Python/openPT3D/externalSoftware/openMVG/src /home/edins/Python/openPT3D/externalSoftware/openMVG/src/openMVG_Samples/exif_Parsing /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openMVG_Samples/exif_Parsing/CMakeFiles/openMVG_main_exif_Parsing.dir/depend

