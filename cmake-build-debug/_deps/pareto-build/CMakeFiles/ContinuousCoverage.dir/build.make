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
CMAKE_BINARY_DIR = C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Utility rule file for ContinuousCoverage.

# Include any custom commands dependencies for this target.
include _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\compiler_depend.make

# Include the progress variables for this target.
include _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\progress.make

_deps\pareto-build\CMakeFiles\ContinuousCoverage:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\ctest.exe" -D ContinuousCoverage
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

ContinuousCoverage: _deps\pareto-build\CMakeFiles\ContinuousCoverage
ContinuousCoverage: _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\build.make
.PHONY : ContinuousCoverage

# Rule to build all files generated by this target.
_deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\build: ContinuousCoverage
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\build

_deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build
	$(CMAKE_COMMAND) -P CMakeFiles\ContinuousCoverage.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\clean

_deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\pareto-build\CMakeFiles\ContinuousCoverage.dir\depend

