# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd

# Include any dependencies generated for this target.
include CMakeFiles/glew_s.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/glew_s.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glew_s.dir/flags.make

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o: CMakeFiles/glew_s.dir/flags.make
CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o: /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o   -c /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c > CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.i

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c -o CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.s

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.requires:

.PHONY : CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.requires

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.provides: CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.requires
	$(MAKE) -f CMakeFiles/glew_s.dir/build.make CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.provides.build
.PHONY : CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.provides

CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.provides.build: CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o


# Object files for target glew_s
glew_s_OBJECTS = \
"CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o"

# External object files for target glew_s
glew_s_EXTERNAL_OBJECTS =

lib/libGLEW.a: CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o
lib/libGLEW.a: CMakeFiles/glew_s.dir/build.make
lib/libGLEW.a: CMakeFiles/glew_s.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library lib/libGLEW.a"
	$(CMAKE_COMMAND) -P CMakeFiles/glew_s.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glew_s.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/glew_s.dir/build: lib/libGLEW.a

.PHONY : CMakeFiles/glew_s.dir/build

CMakeFiles/glew_s.dir/requires: CMakeFiles/glew_s.dir/home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/src/glew.c.o.requires

.PHONY : CMakeFiles/glew_s.dir/requires

CMakeFiles/glew_s.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/glew_s.dir/cmake_clean.cmake
.PHONY : CMakeFiles/glew_s.dir/clean

CMakeFiles/glew_s.dir/depend:
	cd /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/cmake /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/cmake /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd /home/przemek/Desktop/SEM7/Praca/GraphicEngine/lib/glew/builddd/CMakeFiles/glew_s.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/glew_s.dir/depend

