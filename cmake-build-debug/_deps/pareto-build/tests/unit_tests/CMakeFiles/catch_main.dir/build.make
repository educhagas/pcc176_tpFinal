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

# Include any dependencies generated for this target.
include _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\depend.make
# Include the progress variables for this target.
include _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\progress.make

# Include the compile flags for this target's objects.
include _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\flags.make

_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.obj: _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\flags.make
_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.obj: _deps\catch2-src\examples\000-CatchMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/pareto-build/tests/unit_tests/CMakeFiles/catch_main.dir/__/__/__/catch2-src/examples/000-CatchMain.cpp.obj"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.obj /FdCMakeFiles\catch_main.dir\catch_main.pdb /FS -c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\catch2-src\examples\000-CatchMain.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/catch_main.dir/__/__/__/catch2-src/examples/000-CatchMain.cpp.i"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe > CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\catch2-src\examples\000-CatchMain.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/catch_main.dir/__/__/__/catch2-src/examples/000-CatchMain.cpp.s"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.s /c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\catch2-src\examples\000-CatchMain.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Object files for target catch_main
catch_main_OBJECTS = \
"CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.obj"

# External object files for target catch_main
catch_main_EXTERNAL_OBJECTS =

_deps\pareto-build\tests\unit_tests\catch_main.lib: _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\__\__\__\catch2-src\examples\000-CatchMain.cpp.obj
_deps\pareto-build\tests\unit_tests\catch_main.lib: _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\build.make
_deps\pareto-build\tests\unit_tests\catch_main.lib: _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library catch_main.lib"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	$(CMAKE_COMMAND) -P CMakeFiles\catch_main.dir\cmake_clean_target.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\lib.exe /nologo /machine:X86 /out:catch_main.lib @CMakeFiles\catch_main.dir\objects1.rsp 
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Rule to build all files generated by this target.
_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\build: _deps\pareto-build\tests\unit_tests\catch_main.lib
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\build

_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	$(CMAKE_COMMAND) -P CMakeFiles\catch_main.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\clean

_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src\tests\unit_tests C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\catch_main.dir\depend

