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

# Utility rule file for ui_openMVG_control_points_registration_autogen.

# Include any custom commands dependencies for this target.
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/progress.make

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target ui_openMVG_control_points_registration"
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/ui/SfM/control_points_registration && /usr/bin/cmake -E cmake_autogen /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/AutogenInfo.json RELEASE

ui_openMVG_control_points_registration_autogen: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen
ui_openMVG_control_points_registration_autogen: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/build.make
.PHONY : ui_openMVG_control_points_registration_autogen

# Rule to build all files generated by this target.
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/build: ui_openMVG_control_points_registration_autogen
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/build

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/clean:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/ui/SfM/control_points_registration && $(CMAKE_COMMAND) -P CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/cmake_clean.cmake
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/clean

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/depend:
	cd /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edins/Python/openPT3D/externalSoftware/openMVG/src /home/edins/Python/openPT3D/externalSoftware/openMVG/src/software/ui/SfM/control_points_registration /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/ui/SfM/control_points_registration /home/edins/Python/openPT3D/externalSoftware/openMVG_Build_Linux/software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration_autogen.dir/depend

