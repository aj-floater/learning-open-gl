# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\arjam\Gits\cross_platform_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\arjam\Gits\cross_platform_test\build

# Include any dependencies generated for this target.
include CMakeFiles/cross_platform_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cross_platform_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cross_platform_test.dir/flags.make

CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj: CMakeFiles/cross_platform_test.dir/flags.make
CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj: CMakeFiles/cross_platform_test.dir/includes_CXX.rsp
CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj: ../src/get_path.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cross_platform_test.dir\src\get_path.cpp.obj -c C:\Users\arjam\Gits\cross_platform_test\src\get_path.cpp

CMakeFiles/cross_platform_test.dir/src/get_path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cross_platform_test.dir/src/get_path.cpp.i"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\arjam\Gits\cross_platform_test\src\get_path.cpp > CMakeFiles\cross_platform_test.dir\src\get_path.cpp.i

CMakeFiles/cross_platform_test.dir/src/get_path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cross_platform_test.dir/src/get_path.cpp.s"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\arjam\Gits\cross_platform_test\src\get_path.cpp -o CMakeFiles\cross_platform_test.dir\src\get_path.cpp.s

CMakeFiles/cross_platform_test.dir/src/main.cpp.obj: CMakeFiles/cross_platform_test.dir/flags.make
CMakeFiles/cross_platform_test.dir/src/main.cpp.obj: CMakeFiles/cross_platform_test.dir/includes_CXX.rsp
CMakeFiles/cross_platform_test.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cross_platform_test.dir/src/main.cpp.obj"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cross_platform_test.dir\src\main.cpp.obj -c C:\Users\arjam\Gits\cross_platform_test\src\main.cpp

CMakeFiles/cross_platform_test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cross_platform_test.dir/src/main.cpp.i"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\arjam\Gits\cross_platform_test\src\main.cpp > CMakeFiles\cross_platform_test.dir\src\main.cpp.i

CMakeFiles/cross_platform_test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cross_platform_test.dir/src/main.cpp.s"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\arjam\Gits\cross_platform_test\src\main.cpp -o CMakeFiles\cross_platform_test.dir\src\main.cpp.s

CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj: CMakeFiles/cross_platform_test.dir/flags.make
CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj: CMakeFiles/cross_platform_test.dir/includes_CXX.rsp
CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj: ../src/resource_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cross_platform_test.dir\src\resource_manager.cpp.obj -c C:\Users\arjam\Gits\cross_platform_test\src\resource_manager.cpp

CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.i"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\arjam\Gits\cross_platform_test\src\resource_manager.cpp > CMakeFiles\cross_platform_test.dir\src\resource_manager.cpp.i

CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.s"
	C:\MinGW\bin\mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\arjam\Gits\cross_platform_test\src\resource_manager.cpp -o CMakeFiles\cross_platform_test.dir\src\resource_manager.cpp.s

# Object files for target cross_platform_test
cross_platform_test_OBJECTS = \
"CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj" \
"CMakeFiles/cross_platform_test.dir/src/main.cpp.obj" \
"CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj"

# External object files for target cross_platform_test
cross_platform_test_EXTERNAL_OBJECTS =

cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/src/get_path.cpp.obj
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/src/main.cpp.obj
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/src/resource_manager.cpp.obj
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/build.make
cross_platform_test.exe: third-party/glfw3/src/libglfw3.a
cross_platform_test.exe: libGLAD.a
cross_platform_test.exe: libSTB_IMAGE.a
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/linklibs.rsp
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/objects1.rsp
cross_platform_test.exe: CMakeFiles/cross_platform_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cross_platform_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cross_platform_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cross_platform_test.dir/build: cross_platform_test.exe

.PHONY : CMakeFiles/cross_platform_test.dir/build

CMakeFiles/cross_platform_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cross_platform_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cross_platform_test.dir/clean

CMakeFiles/cross_platform_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\arjam\Gits\cross_platform_test C:\Users\arjam\Gits\cross_platform_test C:\Users\arjam\Gits\cross_platform_test\build C:\Users\arjam\Gits\cross_platform_test\build C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles\cross_platform_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cross_platform_test.dir/depend

