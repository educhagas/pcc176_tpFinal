# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\eduar\CLionProjects\pcc176_tpFinal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release

# Utility rule file for ContinuousUpdate.

# Include any custom commands dependencies for this target.
include _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\compiler_depend.make

# Include the progress variables for this target.
include _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\progress.make

_deps\pareto-build\CMakeFiles\ContinuousUpdate:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release\_deps\pareto-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\ctest.exe" -D ContinuousUpdate
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release

ContinuousUpdate: _deps\pareto-build\CMakeFiles\ContinuousUpdate
ContinuousUpdate: _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\build.make
.PHONY : ContinuousUpdate

# Rule to build all files generated by this target.
_deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\build: ContinuousUpdate
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\build

_deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release\_deps\pareto-build
	$(CMAKE_COMMAND) -P CMakeFiles\ContinuousUpdate.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\clean

_deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release\_deps\pareto-src C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release\_deps\pareto-build C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-release\_deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousUpdate.dir\depend
