# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/archiejames/Desktop/cross_platform_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/archiejames/Desktop/cross_platform_test/build

# Include any dependencies generated for this target.
include third-party/glfw3/tests/CMakeFiles/title.dir/depend.make

# Include the progress variables for this target.
include third-party/glfw3/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/glfw3/tests/CMakeFiles/title.dir/flags.make

third-party/glfw3/tests/CMakeFiles/title.dir/title.c.o: third-party/glfw3/tests/CMakeFiles/title.dir/flags.make
third-party/glfw3/tests/CMakeFiles/title.dir/title.c.o: ../third-party/glfw3/tests/title.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third-party/glfw3/tests/CMakeFiles/title.dir/title.c.o"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/title.c.o -c /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/tests/title.c

third-party/glfw3/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/tests/title.c > CMakeFiles/title.dir/title.c.i

third-party/glfw3/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/tests/title.c -o CMakeFiles/title.dir/title.c.s

third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: third-party/glfw3/tests/CMakeFiles/title.dir/flags.make
third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: ../third-party/glfw3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/__/deps/glad_gl.c.o -c /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/deps/glad_gl.c

third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/__/deps/glad_gl.c.i"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/deps/glad_gl.c > CMakeFiles/title.dir/__/deps/glad_gl.c.i

third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/__/deps/glad_gl.c.s"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/deps/glad_gl.c -o CMakeFiles/title.dir/__/deps/glad_gl.c.s

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.o" \
"CMakeFiles/title.dir/__/deps/glad_gl.c.o"

# External object files for target title
title_EXTERNAL_OBJECTS =

third-party/glfw3/tests/title.app/Contents/MacOS/title: third-party/glfw3/tests/CMakeFiles/title.dir/title.c.o
third-party/glfw3/tests/title.app/Contents/MacOS/title: third-party/glfw3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o
third-party/glfw3/tests/title.app/Contents/MacOS/title: third-party/glfw3/tests/CMakeFiles/title.dir/build.make
third-party/glfw3/tests/title.app/Contents/MacOS/title: third-party/glfw3/src/libglfw3.a
third-party/glfw3/tests/title.app/Contents/MacOS/title: third-party/glfw3/tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable title.app/Contents/MacOS/title"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/title.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/glfw3/tests/CMakeFiles/title.dir/build: third-party/glfw3/tests/title.app/Contents/MacOS/title

.PHONY : third-party/glfw3/tests/CMakeFiles/title.dir/build

third-party/glfw3/tests/CMakeFiles/title.dir/clean:
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : third-party/glfw3/tests/CMakeFiles/title.dir/clean

third-party/glfw3/tests/CMakeFiles/title.dir/depend:
	cd /Users/archiejames/Desktop/cross_platform_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/archiejames/Desktop/cross_platform_test /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3/tests /Users/archiejames/Desktop/cross_platform_test/build /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/glfw3/tests/CMakeFiles/title.dir/depend

