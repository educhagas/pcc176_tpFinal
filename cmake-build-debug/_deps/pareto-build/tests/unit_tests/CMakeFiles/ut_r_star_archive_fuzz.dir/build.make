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
include _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\depend.make
# Include the progress variables for this target.
include _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\progress.make

# Include the compile flags for this target's objects.
include _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\flags.make

_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.obj: _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\flags.make
_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.obj: _deps\pareto-src\tests\unit_tests\archive.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/pareto-build/tests/unit_tests/CMakeFiles/ut_r_star_archive_fuzz.dir/archive.cpp.obj"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.obj /FdCMakeFiles\ut_r_star_archive_fuzz.dir\ /FS -c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src\tests\unit_tests\archive.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ut_r_star_archive_fuzz.dir/archive.cpp.i"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe > CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src\tests\unit_tests\archive.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ut_r_star_archive_fuzz.dir/archive.cpp.s"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.s /c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src\tests\unit_tests\archive.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Object files for target ut_r_star_archive_fuzz
ut_r_star_archive_fuzz_OBJECTS = \
"CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.obj"

# External object files for target ut_r_star_archive_fuzz
ut_r_star_archive_fuzz_EXTERNAL_OBJECTS =

_deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.exe: _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\archive.cpp.obj
_deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.exe: _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\build.make
_deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.exe: _deps\pareto-build\tests\unit_tests\catch_main.lib
_deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.exe: _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ut_r_star_archive_fuzz.exe"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	"C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\ut_r_star_archive_fuzz.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\link.exe /nologo @CMakeFiles\ut_r_star_archive_fuzz.dir\objects1.rsp @<<
 /out:ut_r_star_archive_fuzz.exe /implib:ut_r_star_archive_fuzz.lib /pdb:C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  catch_main.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -D TEST_TARGET=ut_r_star_archive_fuzz -D TEST_EXECUTABLE=C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/pareto-build/tests/unit_tests/ut_r_star_archive_fuzz.exe -D TEST_EXECUTOR= -D TEST_WORKING_DIR=C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/pareto-build/tests/unit_tests -D TEST_SPEC= -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_LIST=ut_r_star_archive_fuzz_TESTS -D CTEST_FILE=C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/pareto-build/tests/unit_tests/ut_r_star_archive_fuzz_tests-b858cb2.cmake -P C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/catch2-src/contrib/CatchAddTests.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Rule to build all files generated by this target.
_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\build: _deps\pareto-build\tests\unit_tests\ut_r_star_archive_fuzz.exe
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\build

_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests
	$(CMAKE_COMMAND) -P CMakeFiles\ut_r_star_archive_fuzz.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\clean

_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-src\tests\unit_tests C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\pareto-build\tests\unit_tests\CMakeFiles\ut_r_star_archive_fuzz.dir\depend

