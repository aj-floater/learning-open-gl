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
include third-party/glfw3/examples/CMakeFiles/splitview.dir/depend.make

# Include the progress variables for this target.
include third-party/glfw3/examples/CMakeFiles/splitview.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/glfw3/examples/CMakeFiles/splitview.dir/flags.make

third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.obj: third-party/glfw3/examples/CMakeFiles/splitview.dir/flags.make
third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.obj: third-party/glfw3/examples/CMakeFiles/splitview.dir/includes_C.rsp
third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.obj: ../third-party/glfw3/examples/splitview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.obj"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\splitview.dir\splitview.c.obj -c C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\examples\splitview.c

third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/splitview.c.i"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\examples\splitview.c > CMakeFiles\splitview.dir\splitview.c.i

third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/splitview.c.s"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\examples\splitview.c -o CMakeFiles\splitview.dir\splitview.c.s

third-party/glfw3/examples/CMakeFiles/splitview.dir/glfw.rc.obj: third-party/glfw3/examples/CMakeFiles/splitview.dir/flags.make
third-party/glfw3/examples/CMakeFiles/splitview.dir/glfw.rc.obj: ../third-party/glfw3/examples/glfw.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object third-party/glfw3/examples/CMakeFiles/splitview.dir/glfw.rc.obj"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\examples\glfw.rc CMakeFiles\splitview.dir\glfw.rc.obj

third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj: third-party/glfw3/examples/CMakeFiles/splitview.dir/flags.make
third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj: third-party/glfw3/examples/CMakeFiles/splitview.dir/includes_C.rsp
third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj: ../third-party/glfw3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\splitview.dir\__\deps\glad_gl.c.obj -c C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\deps\glad_gl.c

third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\deps\glad_gl.c > CMakeFiles\splitview.dir\__\deps\glad_gl.c.i

third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\deps\glad_gl.c -o CMakeFiles\splitview.dir\__\deps\glad_gl.c.s

# Object files for target splitview
splitview_OBJECTS = \
"CMakeFiles/splitview.dir/splitview.c.obj" \
"CMakeFiles/splitview.dir/glfw.rc.obj" \
"CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj"

# External object files for target splitview
splitview_EXTERNAL_OBJECTS =

third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/splitview.c.obj
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/glfw.rc.obj
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/__/deps/glad_gl.c.obj
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/build.make
third-party/glfw3/examples/splitview.exe: third-party/glfw3/src/libglfw3.a
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/linklibs.rsp
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/objects1.rsp
third-party/glfw3/examples/splitview.exe: third-party/glfw3/examples/CMakeFiles/splitview.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\arjam\Gits\cross_platform_test\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable splitview.exe"
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\splitview.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/glfw3/examples/CMakeFiles/splitview.dir/build: third-party/glfw3/examples/splitview.exe

.PHONY : third-party/glfw3/examples/CMakeFiles/splitview.dir/build

third-party/glfw3/examples/CMakeFiles/splitview.dir/clean:
	cd /d C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples && $(CMAKE_COMMAND) -P CMakeFiles\splitview.dir\cmake_clean.cmake
.PHONY : third-party/glfw3/examples/CMakeFiles/splitview.dir/clean

third-party/glfw3/examples/CMakeFiles/splitview.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\arjam\Gits\cross_platform_test C:\Users\arjam\Gits\cross_platform_test\third-party\glfw3\examples C:\Users\arjam\Gits\cross_platform_test\build C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples C:\Users\arjam\Gits\cross_platform_test\build\third-party\glfw3\examples\CMakeFiles\splitview.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/glfw3/examples/CMakeFiles/splitview.dir/depend

