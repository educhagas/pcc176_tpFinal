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
include _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\depend.make
# Include the progress variables for this target.
include _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\progress.make

# Include the compile flags for this target's objects.
include _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\flags.make

_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\main.cpp.obj: _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\flags.make
_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\main.cpp.obj: _deps\matplotplusplus-src\test\generate_examples\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/matplotplusplus-build/test/generate_examples/CMakeFiles/generate_examples.dir/main.cpp.obj"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\generate_examples.dir\main.cpp.obj /FdCMakeFiles\generate_examples.dir\ /FS -c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\test\generate_examples\main.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/generate_examples.dir/main.cpp.i"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe > CMakeFiles\generate_examples.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\test\generate_examples\main.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/generate_examples.dir/main.cpp.s"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\generate_examples.dir\main.cpp.s /c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\test\generate_examples\main.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Object files for target generate_examples
generate_examples_OBJECTS = \
"CMakeFiles\generate_examples.dir\main.cpp.obj"

# External object files for target generate_examples
generate_examples_EXTERNAL_OBJECTS =

_deps\matplotplusplus-build\test\generate_examples\generate_examples.exe: _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\main.cpp.obj
_deps\matplotplusplus-build\test\generate_examples\generate_examples.exe: _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\build.make
_deps\matplotplusplus-build\test\generate_examples\generate_examples.exe: _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable generate_examples.exe"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples
	"C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\generate_examples.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\link.exe /nologo @CMakeFiles\generate_examples.dir\objects1.rsp @<<
 /out:generate_examples.exe /implib:generate_examples.lib /pdb:C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples\generate_examples.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Rule to build all files generated by this target.
_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\build: _deps\matplotplusplus-build\test\generate_examples\generate_examples.exe
.PHONY : _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\build

_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples
	$(CMAKE_COMMAND) -P CMakeFiles\generate_examples.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
.PHONY : _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\clean

_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\test\generate_examples C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\matplotplusplus-build\test\generate_examples\CMakeFiles\generate_examples.dir\depend

