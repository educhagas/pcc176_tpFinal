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
include _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\depend.make
# Include the progress variables for this target.
include _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\progress.make

# Include the compile flags for this target's objects.
include _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\flags.make

_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\quiver_6.cpp.obj: _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\flags.make
_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\quiver_6.cpp.obj: _deps\matplotplusplus-src\examples\vector_fields\quiver\quiver_6.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/matplotplusplus-build/examples/vector_fields/quiver/CMakeFiles/example_quiver_6.dir/quiver_6.cpp.obj"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\example_quiver_6.dir\quiver_6.cpp.obj /FdCMakeFiles\example_quiver_6.dir\ /FS -c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\examples\vector_fields\quiver\quiver_6.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\quiver_6.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_quiver_6.dir/quiver_6.cpp.i"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe > CMakeFiles\example_quiver_6.dir\quiver_6.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\examples\vector_fields\quiver\quiver_6.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\quiver_6.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_quiver_6.dir/quiver_6.cpp.s"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\example_quiver_6.dir\quiver_6.cpp.s /c C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\examples\vector_fields\quiver\quiver_6.cpp
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Object files for target example_quiver_6
example_quiver_6_OBJECTS = \
"CMakeFiles\example_quiver_6.dir\quiver_6.cpp.obj"

# External object files for target example_quiver_6
example_quiver_6_EXTERNAL_OBJECTS =

_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe: _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\quiver_6.cpp.obj
_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe: _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\build.make
_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe: _deps\matplotplusplus-build\source\matplot\matplot.lib
_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe: _deps\matplotplusplus-build\source\3rd_party\nodesoup.lib
_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe: _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_quiver_6.exe"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver
	"C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\example_quiver_6.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x86\link.exe /nologo @CMakeFiles\example_quiver_6.dir\objects1.rsp @<<
 /out:example_quiver_6.exe /implib:example_quiver_6.lib /pdb:C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  ..\..\..\source\matplot\matplot.lib gdi32.lib ..\..\..\source\3rd_party\nodesoup.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug

# Rule to build all files generated by this target.
_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\build: _deps\matplotplusplus-build\examples\vector_fields\quiver\example_quiver_6.exe
.PHONY : _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\build

_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\clean:
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver
	$(CMAKE_COMMAND) -P CMakeFiles\example_quiver_6.dir\cmake_clean.cmake
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug
.PHONY : _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\clean

_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-src\examples\vector_fields\quiver C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\matplotplusplus-build\examples\vector_fields\quiver\CMakeFiles\example_quiver_6.dir\depend

