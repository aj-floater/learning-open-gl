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

# Utility rule file for uninstall.

# Include the progress variables for this target.
include third-party/glfw3/CMakeFiles/uninstall.dir/progress.make

third-party/glfw3/CMakeFiles/uninstall:
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3 && /Applications/CMake.app/Contents/bin/cmake -P /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/cmake_uninstall.cmake

uninstall: third-party/glfw3/CMakeFiles/uninstall
uninstall: third-party/glfw3/CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
third-party/glfw3/CMakeFiles/uninstall.dir/build: uninstall

.PHONY : third-party/glfw3/CMakeFiles/uninstall.dir/build

third-party/glfw3/CMakeFiles/uninstall.dir/clean:
	cd /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3 && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : third-party/glfw3/CMakeFiles/uninstall.dir/clean

third-party/glfw3/CMakeFiles/uninstall.dir/depend:
	cd /Users/archiejames/Desktop/cross_platform_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/archiejames/Desktop/cross_platform_test /Users/archiejames/Desktop/cross_platform_test/third-party/glfw3 /Users/archiejames/Desktop/cross_platform_test/build /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3 /Users/archiejames/Desktop/cross_platform_test/build/third-party/glfw3/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/glfw3/CMakeFiles/uninstall.dir/depend

