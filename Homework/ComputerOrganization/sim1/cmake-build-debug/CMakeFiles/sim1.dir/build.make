# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/garlic/clion-2018.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/garlic/clion-2018.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/garlic/gtd/Homework/ComputerOrganization/sim1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sim1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sim1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim1.dir/flags.make

CMakeFiles/sim1.dir/sim1.c.o: CMakeFiles/sim1.dir/flags.make
CMakeFiles/sim1.dir/sim1.c.o: ../sim1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/sim1.dir/sim1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sim1.dir/sim1.c.o   -c /home/garlic/gtd/Homework/ComputerOrganization/sim1/sim1.c

CMakeFiles/sim1.dir/sim1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sim1.dir/sim1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/garlic/gtd/Homework/ComputerOrganization/sim1/sim1.c > CMakeFiles/sim1.dir/sim1.c.i

CMakeFiles/sim1.dir/sim1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sim1.dir/sim1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/garlic/gtd/Homework/ComputerOrganization/sim1/sim1.c -o CMakeFiles/sim1.dir/sim1.c.s

CMakeFiles/sim1.dir/test_13_carryOut.c.o: CMakeFiles/sim1.dir/flags.make
CMakeFiles/sim1.dir/test_13_carryOut.c.o: ../test_13_carryOut.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/sim1.dir/test_13_carryOut.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sim1.dir/test_13_carryOut.c.o   -c /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_13_carryOut.c

CMakeFiles/sim1.dir/test_13_carryOut.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sim1.dir/test_13_carryOut.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_13_carryOut.c > CMakeFiles/sim1.dir/test_13_carryOut.c.i

CMakeFiles/sim1.dir/test_13_carryOut.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sim1.dir/test_13_carryOut.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_13_carryOut.c -o CMakeFiles/sim1.dir/test_13_carryOut.c.s

CMakeFiles/sim1.dir/test_15_subtract1.c.o: CMakeFiles/sim1.dir/flags.make
CMakeFiles/sim1.dir/test_15_subtract1.c.o: ../test_15_subtract1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/sim1.dir/test_15_subtract1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sim1.dir/test_15_subtract1.c.o   -c /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_15_subtract1.c

CMakeFiles/sim1.dir/test_15_subtract1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sim1.dir/test_15_subtract1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_15_subtract1.c > CMakeFiles/sim1.dir/test_15_subtract1.c.i

CMakeFiles/sim1.dir/test_15_subtract1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sim1.dir/test_15_subtract1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/garlic/gtd/Homework/ComputerOrganization/sim1/test_15_subtract1.c -o CMakeFiles/sim1.dir/test_15_subtract1.c.s

# Object files for target sim1
sim1_OBJECTS = \
"CMakeFiles/sim1.dir/sim1.c.o" \
"CMakeFiles/sim1.dir/test_13_carryOut.c.o" \
"CMakeFiles/sim1.dir/test_15_subtract1.c.o"

# External object files for target sim1
sim1_EXTERNAL_OBJECTS =

sim1: CMakeFiles/sim1.dir/sim1.c.o
sim1: CMakeFiles/sim1.dir/test_13_carryOut.c.o
sim1: CMakeFiles/sim1.dir/test_15_subtract1.c.o
sim1: CMakeFiles/sim1.dir/build.make
sim1: CMakeFiles/sim1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable sim1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim1.dir/build: sim1

.PHONY : CMakeFiles/sim1.dir/build

CMakeFiles/sim1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim1.dir/clean

CMakeFiles/sim1.dir/depend:
	cd /home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/garlic/gtd/Homework/ComputerOrganization/sim1 /home/garlic/gtd/Homework/ComputerOrganization/sim1 /home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug /home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug /home/garlic/gtd/Homework/ComputerOrganization/sim1/cmake-build-debug/CMakeFiles/sim1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim1.dir/depend

