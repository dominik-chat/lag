# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/chomik/projects/lag

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chomik/projects/lag/build

# Include any dependencies generated for this target.
include CMakeFiles/liblag.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/liblag.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/liblag.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/liblag.dir/flags.make

CMakeFiles/liblag.dir/codegen:
.PHONY : CMakeFiles/liblag.dir/codegen

CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o: CMakeFiles/liblag.dir/flags.make
CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o: /home/chomik/projects/lag/datastruct/list/slist/slist.c
CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o: CMakeFiles/liblag.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/chomik/projects/lag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o -MF CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o.d -o CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o -c /home/chomik/projects/lag/datastruct/list/slist/slist.c

CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/chomik/projects/lag/datastruct/list/slist/slist.c > CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.i

CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/chomik/projects/lag/datastruct/list/slist/slist.c -o CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.s

# Object files for target liblag
liblag_OBJECTS = \
"CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o"

# External object files for target liblag
liblag_EXTERNAL_OBJECTS =

libliblag.a: CMakeFiles/liblag.dir/datastruct/list/slist/slist.c.o
libliblag.a: CMakeFiles/liblag.dir/build.make
libliblag.a: CMakeFiles/liblag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/chomik/projects/lag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libliblag.a"
	$(CMAKE_COMMAND) -P CMakeFiles/liblag.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/liblag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/liblag.dir/build: libliblag.a
.PHONY : CMakeFiles/liblag.dir/build

CMakeFiles/liblag.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/liblag.dir/cmake_clean.cmake
.PHONY : CMakeFiles/liblag.dir/clean

CMakeFiles/liblag.dir/depend:
	cd /home/chomik/projects/lag/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chomik/projects/lag /home/chomik/projects/lag /home/chomik/projects/lag/build /home/chomik/projects/lag/build /home/chomik/projects/lag/build/CMakeFiles/liblag.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/liblag.dir/depend

