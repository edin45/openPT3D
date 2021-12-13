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
CMAKE_SOURCE_DIR = /home/edin/programs/openMvgBuildScripts/openMVG/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edin/programs/openMvgBuildScripts/openMVG_Build

# Include any dependencies generated for this target.
include openMVG/system/CMakeFiles/openMVG_system.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openMVG/system/CMakeFiles/openMVG_system.dir/compiler_depend.make

# Include the progress variables for this target.
include openMVG/system/CMakeFiles/openMVG_system.dir/progress.make

# Include the compile flags for this target's objects.
include openMVG/system/CMakeFiles/openMVG_system.dir/flags.make

openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o: openMVG/system/CMakeFiles/openMVG_system.dir/flags.make
openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/openMVG/system/timer.cpp
openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o: openMVG/system/CMakeFiles/openMVG_system.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o -MF CMakeFiles/openMVG_system.dir/timer.cpp.o.d -o CMakeFiles/openMVG_system.dir/timer.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/openMVG/system/timer.cpp

openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_system.dir/timer.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/openMVG/system/timer.cpp > CMakeFiles/openMVG_system.dir/timer.cpp.i

openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_system.dir/timer.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/openMVG/system/timer.cpp -o CMakeFiles/openMVG_system.dir/timer.cpp.s

# Object files for target openMVG_system
openMVG_system_OBJECTS = \
"CMakeFiles/openMVG_system.dir/timer.cpp.o"

# External object files for target openMVG_system
openMVG_system_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/libopenMVG_system.a: openMVG/system/CMakeFiles/openMVG_system.dir/timer.cpp.o
Linux-x86_64-RELEASE/libopenMVG_system.a: openMVG/system/CMakeFiles/openMVG_system.dir/build.make
Linux-x86_64-RELEASE/libopenMVG_system.a: openMVG/system/CMakeFiles/openMVG_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../Linux-x86_64-RELEASE/libopenMVG_system.a"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_system.dir/cmake_clean_target.cmake
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openMVG/system/CMakeFiles/openMVG_system.dir/build: Linux-x86_64-RELEASE/libopenMVG_system.a
.PHONY : openMVG/system/CMakeFiles/openMVG_system.dir/build

openMVG/system/CMakeFiles/openMVG_system.dir/clean:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_system.dir/cmake_clean.cmake
.PHONY : openMVG/system/CMakeFiles/openMVG_system.dir/clean

openMVG/system/CMakeFiles/openMVG_system.dir/depend:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edin/programs/openMvgBuildScripts/openMVG/src /home/edin/programs/openMvgBuildScripts/openMVG/src/openMVG/system /home/edin/programs/openMvgBuildScripts/openMVG_Build /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system /home/edin/programs/openMvgBuildScripts/openMVG_Build/openMVG/system/CMakeFiles/openMVG_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openMVG/system/CMakeFiles/openMVG_system.dir/depend

