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
include third-party/openal-soft/CMakeFiles/almultireverb.dir/depend.make

# Include the progress variables for this target.
include third-party/openal-soft/CMakeFiles/almultireverb.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/openal-soft/CMakeFiles/almultireverb.dir/flags.make

third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.o: third-party/openal-soft/CMakeFiles/almultireverb.dir/flags.make
third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.o: ../third-party/openal-soft/examples/almultireverb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.o"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/almultireverb.dir/examples/almultireverb.c.o -c /Users/archiejames/Desktop/cross_platform_test/third-party/openal-soft/examples/almultireverb.c

third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/almultireverb.dir/examples/almultireverb.c.i"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/third-party/openal-soft/examples/almultireverb.c > CMakeFiles/almultireverb.dir/examples/almultireverb.c.i

third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/almultireverb.dir/examples/almultireverb.c.s"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/third-party/openal-soft/examples/almultireverb.c -o CMakeFiles/almultireverb.dir/examples/almultireverb.c.s

# Object files for target almultireverb
almultireverb_OBJECTS = \
"CMakeFiles/almultireverb.dir/examples/almultireverb.c.o"

# External object files for target almultireverb
almultireverb_EXTERNAL_OBJECTS =

third-party/openal-soft/almultireverb: third-party/openal-soft/CMakeFiles/almultireverb.dir/examples/almultireverb.c.o
third-party/openal-soft/almultireverb: third-party/openal-soft/CMakeFiles/almultireverb.dir/build.make
third-party/openal-soft/almultireverb: /opt/local/lib/libsndfile.dylib
third-party/openal-soft/almultireverb: third-party/openal-soft/libex-common.a
third-party/openal-soft/almultireverb: third-party/openal-soft/libopenal.1.21.1.dylib
third-party/openal-soft/almultireverb: third-party/openal-soft/CMakeFiles/almultireverb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable almultireverb"
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/almultireverb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/openal-soft/CMakeFiles/almultireverb.dir/build: third-party/openal-soft/almultireverb

.PHONY : third-party/openal-soft/CMakeFiles/almultireverb.dir/build

third-party/openal-soft/CMakeFiles/almultireverb.dir/clean:
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/almultireverb.dir/cmake_clean.cmake
.PHONY : third-party/openal-soft/CMakeFiles/almultireverb.dir/clean

third-party/openal-soft/CMakeFiles/almultireverb.dir/depend:
	cd /Users/archiejames/Desktop/cross_platform_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/archiejames/Desktop/cross_platform_test /Users/archiejames/Desktop/cross_platform_test/third-party/openal-soft /Users/archiejames/Desktop/cross_platform_test/build /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft /Users/archiejames/Desktop/cross_platform_test/build/third-party/openal-soft/CMakeFiles/almultireverb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/openal-soft/CMakeFiles/almultireverb.dir/depend

