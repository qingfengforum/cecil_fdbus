# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build

# Include any dependencies generated for this target.
include CMakeFiles/fdbjobtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fdbjobtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fdbjobtest.dir/flags.make

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o: CMakeFiles/fdbjobtest.dir/flags.make
CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o: /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o -c /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp > CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.i

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp -o CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.s

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.requires:

.PHONY : CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.requires

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.provides: CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/fdbjobtest.dir/build.make CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.provides.build
.PHONY : CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.provides

CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.provides.build: CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o


# Object files for target fdbjobtest
fdbjobtest_OBJECTS = \
"CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o"

# External object files for target fdbjobtest
fdbjobtest_EXTERNAL_OBJECTS =

fdbjobtest: CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o
fdbjobtest: CMakeFiles/fdbjobtest.dir/build.make
fdbjobtest: libcommon_base.so
fdbjobtest: CMakeFiles/fdbjobtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fdbjobtest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fdbjobtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fdbjobtest.dir/build: fdbjobtest

.PHONY : CMakeFiles/fdbjobtest.dir/build

CMakeFiles/fdbjobtest.dir/requires: CMakeFiles/fdbjobtest.dir/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/example/job_test.cpp.o.requires

.PHONY : CMakeFiles/fdbjobtest.dir/requires

CMakeFiles/fdbjobtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fdbjobtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fdbjobtest.dir/clean

CMakeFiles/fdbjobtest.dir/depend:
	cd /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/CMakeFiles/fdbjobtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fdbjobtest.dir/depend

