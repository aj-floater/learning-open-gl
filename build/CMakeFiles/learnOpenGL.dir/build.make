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
include CMakeFiles/learnOpenGL.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/learnOpenGL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/learnOpenGL.dir/flags.make

CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o: CMakeFiles/learnOpenGL.dir/flags.make
CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o: ../src/get_path.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o -c /Users/archiejames/Desktop/cross_platform_test/src/get_path.cpp

CMakeFiles/learnOpenGL.dir/src/get_path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/learnOpenGL.dir/src/get_path.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/src/get_path.cpp > CMakeFiles/learnOpenGL.dir/src/get_path.cpp.i

CMakeFiles/learnOpenGL.dir/src/get_path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/learnOpenGL.dir/src/get_path.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/src/get_path.cpp -o CMakeFiles/learnOpenGL.dir/src/get_path.cpp.s

CMakeFiles/learnOpenGL.dir/src/main.cpp.o: CMakeFiles/learnOpenGL.dir/flags.make
CMakeFiles/learnOpenGL.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/learnOpenGL.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/learnOpenGL.dir/src/main.cpp.o -c /Users/archiejames/Desktop/cross_platform_test/src/main.cpp

CMakeFiles/learnOpenGL.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/learnOpenGL.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/src/main.cpp > CMakeFiles/learnOpenGL.dir/src/main.cpp.i

CMakeFiles/learnOpenGL.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/learnOpenGL.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/src/main.cpp -o CMakeFiles/learnOpenGL.dir/src/main.cpp.s

CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o: CMakeFiles/learnOpenGL.dir/flags.make
CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o: ../src/resource_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o -c /Users/archiejames/Desktop/cross_platform_test/src/resource_manager.cpp

CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/archiejames/Desktop/cross_platform_test/src/resource_manager.cpp > CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.i

CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/archiejames/Desktop/cross_platform_test/src/resource_manager.cpp -o CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.s

# Object files for target learnOpenGL
learnOpenGL_OBJECTS = \
"CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o" \
"CMakeFiles/learnOpenGL.dir/src/main.cpp.o" \
"CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o"

# External object files for target learnOpenGL
learnOpenGL_EXTERNAL_OBJECTS =

learnOpenGL: CMakeFiles/learnOpenGL.dir/src/get_path.cpp.o
learnOpenGL: CMakeFiles/learnOpenGL.dir/src/main.cpp.o
learnOpenGL: CMakeFiles/learnOpenGL.dir/src/resource_manager.cpp.o
learnOpenGL: CMakeFiles/learnOpenGL.dir/build.make
learnOpenGL: third-party/glfw3/src/libglfw3.a
learnOpenGL: third-party/openal-soft/libopenal.1.21.1.dylib
learnOpenGL: libGLAD.a
learnOpenGL: libSTB_IMAGE.a
learnOpenGL: CMakeFiles/learnOpenGL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable learnOpenGL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/learnOpenGL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/learnOpenGL.dir/build: learnOpenGL

.PHONY : CMakeFiles/learnOpenGL.dir/build

CMakeFiles/learnOpenGL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/learnOpenGL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/learnOpenGL.dir/clean

CMakeFiles/learnOpenGL.dir/depend:
	cd /Users/archiejames/Desktop/cross_platform_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/archiejames/Desktop/cross_platform_test /Users/archiejames/Desktop/cross_platform_test /Users/archiejames/Desktop/cross_platform_test/build /Users/archiejames/Desktop/cross_platform_test/build /Users/archiejames/Desktop/cross_platform_test/build/CMakeFiles/learnOpenGL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/learnOpenGL.dir/depend
