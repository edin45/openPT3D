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

# Utility rule file for check.

# Include any custom commands dependencies for this target.
include third_party/lemon/CMakeFiles/check.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/lemon/CMakeFiles/check.dir/progress.make

third_party/lemon/CMakeFiles/check:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/third_party/lemon && /usr/bin/ctest

check: third_party/lemon/CMakeFiles/check
check: third_party/lemon/CMakeFiles/check.dir/build.make
.PHONY : check

# Rule to build all files generated by this target.
third_party/lemon/CMakeFiles/check.dir/build: check
.PHONY : third_party/lemon/CMakeFiles/check.dir/build

third_party/lemon/CMakeFiles/check.dir/clean:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/third_party/lemon && $(CMAKE_COMMAND) -P CMakeFiles/check.dir/cmake_clean.cmake
.PHONY : third_party/lemon/CMakeFiles/check.dir/clean

third_party/lemon/CMakeFiles/check.dir/depend:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edin/programs/openMvgBuildScripts/openMVG/src /home/edin/programs/openMvgBuildScripts/openMVG/src/third_party/lemon /home/edin/programs/openMvgBuildScripts/openMVG_Build /home/edin/programs/openMvgBuildScripts/openMVG_Build/third_party/lemon /home/edin/programs/openMvgBuildScripts/openMVG_Build/third_party/lemon/CMakeFiles/check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_party/lemon/CMakeFiles/check.dir/depend

