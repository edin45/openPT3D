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
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.make

# Include the progress variables for this target.
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/progress.make

# Include the compile flags for this target's objects.
include software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o: software/ui/SfM/control_points_registration/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.s

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/main.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/main.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/main.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/main.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.s

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/MainWindow.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/MainWindow.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/MainWindow.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/MainWindow.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.s

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/GraphicsView.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/GraphicsView.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/GraphicsView.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/GraphicsView.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.s

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPointTableView.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPointTableView.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPointTableView.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPointTableView.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.s

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/flags.make
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o: /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPoint2DNode.cpp
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o -MF CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o.d -o CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o -c /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPoint2DNode.cpp

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.i"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPoint2DNode.cpp > CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.i

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.s"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration/ControlPoint2DNode.cpp -o CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.s

# Object files for target ui_openMVG_control_points_registration
ui_openMVG_control_points_registration_OBJECTS = \
"CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o" \
"CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o" \
"CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o" \
"CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o" \
"CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o"

# External object files for target ui_openMVG_control_points_registration
ui_openMVG_control_points_registration_EXTERNAL_OBJECTS =

Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ui_openMVG_control_points_registration_autogen/mocs_compilation.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/main.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/MainWindow.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/GraphicsView.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPointTableView.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/ControlPoint2DNode.cpp.o
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/build.make
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libQt5Widgets.so.5.15.2
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libQt5Gui.so.5.15.2
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_sfm.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libQt5Core.so.5.15.2
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_geometry.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_matching.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_features.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_stlplus.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_fast.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_image.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libgomp.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libpthread.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libjpeg.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libpng.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libz.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libtiff.so
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_lInftyComputerVision.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_multiview.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_linearProgramming.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_numeric.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/liblib_clp.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/liblib_OsiClpSolver.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/liblib_CoinUtils.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/liblib_Osi.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: Linux-x86_64-RELEASE/libopenMVG_system.a
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libceres.so.2.0.0
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libglog.so.0.5.0
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: /usr/lib/libgflags.so.2.2.2
Linux-x86_64-RELEASE/ui_openMVG_control_points_registration: software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edin/programs/openMvgBuildScripts/openMVG_Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../../../Linux-x86_64-RELEASE/ui_openMVG_control_points_registration"
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ui_openMVG_control_points_registration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/build: Linux-x86_64-RELEASE/ui_openMVG_control_points_registration
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/build

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/clean:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration && $(CMAKE_COMMAND) -P CMakeFiles/ui_openMVG_control_points_registration.dir/cmake_clean.cmake
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/clean

software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/depend:
	cd /home/edin/programs/openMvgBuildScripts/openMVG_Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edin/programs/openMvgBuildScripts/openMVG/src /home/edin/programs/openMvgBuildScripts/openMVG/src/software/ui/SfM/control_points_registration /home/edin/programs/openMvgBuildScripts/openMVG_Build /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration /home/edin/programs/openMvgBuildScripts/openMVG_Build/software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : software/ui/SfM/control_points_registration/CMakeFiles/ui_openMVG_control_points_registration.dir/depend
