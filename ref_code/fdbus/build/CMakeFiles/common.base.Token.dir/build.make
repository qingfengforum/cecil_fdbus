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

# Utility rule file for common.base.Token.

# Include the progress variables for this target.
include CMakeFiles/common.base.Token.dir/progress.make

CMakeFiles/common.base.Token: idl-gen/common.base.Token.pb.cc
CMakeFiles/common.base.Token: idl-gen/common.base.Token.pb.h


idl-gen/common.base.Token.pb.cc: /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/idl/common.base.Token.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating idl-gen/common.base.Token.pb.cc, idl-gen/common.base.Token.pb.h"
	cd /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/idl && protoc -I/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/idl --cpp_out=/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/idl-gen /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/idl/common.base.Token.proto

idl-gen/common.base.Token.pb.h: idl-gen/common.base.Token.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate idl-gen/common.base.Token.pb.h

common.base.Token: CMakeFiles/common.base.Token
common.base.Token: idl-gen/common.base.Token.pb.cc
common.base.Token: idl-gen/common.base.Token.pb.h
common.base.Token: CMakeFiles/common.base.Token.dir/build.make

.PHONY : common.base.Token

# Rule to build all files generated by this target.
CMakeFiles/common.base.Token.dir/build: common.base.Token

.PHONY : CMakeFiles/common.base.Token.dir/build

CMakeFiles/common.base.Token.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/common.base.Token.dir/cmake_clean.cmake
.PHONY : CMakeFiles/common.base.Token.dir/clean

CMakeFiles/common.base.Token.dir/depend:
	cd /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/CMakeFiles/common.base.Token.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/common.base.Token.dir/depend

