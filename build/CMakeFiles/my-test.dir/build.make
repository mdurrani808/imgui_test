# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/mdurrani/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/mdurrani/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mdurrani/imgui_testing/calib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mdurrani/imgui_testing/calib/build

# Include any dependencies generated for this target.
include CMakeFiles/my-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my-test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my-test.dir/flags.make

CMakeFiles/my-test.dir/src/main.cpp.o: CMakeFiles/my-test.dir/flags.make
CMakeFiles/my-test.dir/src/main.cpp.o: /home/mdurrani/imgui_testing/calib/src/main.cpp
CMakeFiles/my-test.dir/src/main.cpp.o: CMakeFiles/my-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mdurrani/imgui_testing/calib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my-test.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my-test.dir/src/main.cpp.o -MF CMakeFiles/my-test.dir/src/main.cpp.o.d -o CMakeFiles/my-test.dir/src/main.cpp.o -c /home/mdurrani/imgui_testing/calib/src/main.cpp

CMakeFiles/my-test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my-test.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mdurrani/imgui_testing/calib/src/main.cpp > CMakeFiles/my-test.dir/src/main.cpp.i

CMakeFiles/my-test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my-test.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mdurrani/imgui_testing/calib/src/main.cpp -o CMakeFiles/my-test.dir/src/main.cpp.s

# Object files for target my-test
my__test_OBJECTS = \
"CMakeFiles/my-test.dir/src/main.cpp.o"

# External object files for target my-test
my__test_EXTERNAL_OBJECTS =

my-test: CMakeFiles/my-test.dir/src/main.cpp.o
my-test: CMakeFiles/my-test.dir/build.make
my-test: /usr/lib/x86_64-linux-gnu/libfmt.so.8.1.1
my-test: /usr/lib/x86_64-linux-gnu/libSDL2main.a
my-test: /usr/lib/x86_64-linux-gnu/libSDL2.so
my-test: /home/mdurrani/imgui_testing/calib/vcpkg/installed/x64-linux/lib/libimgui.a
my-test: /usr/lib/x86_64-linux-gnu/libGLX.so
my-test: /usr/lib/x86_64-linux-gnu/libOpenGL.so
my-test: CMakeFiles/my-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mdurrani/imgui_testing/calib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my-test.dir/build: my-test
.PHONY : CMakeFiles/my-test.dir/build

CMakeFiles/my-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my-test.dir/clean

CMakeFiles/my-test.dir/depend:
	cd /home/mdurrani/imgui_testing/calib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mdurrani/imgui_testing/calib /home/mdurrani/imgui_testing/calib /home/mdurrani/imgui_testing/calib/build /home/mdurrani/imgui_testing/calib/build /home/mdurrani/imgui_testing/calib/build/CMakeFiles/my-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my-test.dir/depend

