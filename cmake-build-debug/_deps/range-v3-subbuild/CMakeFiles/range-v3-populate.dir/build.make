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
CMAKE_SOURCE_DIR = C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

# Utility rule file for range-v3-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles\range-v3-populate.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\range-v3-populate.dir\progress.make

CMakeFiles\range-v3-populate: CMakeFiles\range-v3-populate-complete

CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-install
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-mkdir
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-download
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-update
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-patch
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-configure
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-build
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-install
CMakeFiles\range-v3-populate-complete: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'range-v3-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/CMakeFiles
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/CMakeFiles/range-v3-populate-complete
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-done

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-build: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'range-v3-populate'"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-build
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-configure: range-v3-populate-prefix\tmp\range-v3-populate-cfgcmd.txt
range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-configure: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'range-v3-populate'"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-configure
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-download: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-urlinfo.txt
range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-download: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'range-v3-populate'"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -P C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/download-range-v3-populate.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -P C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/verify-range-v3-populate.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -P C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/extract-range-v3-populate.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-download
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-install: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'range-v3-populate'"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-install
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'range-v3-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-src
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/tmp
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E make_directory C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-mkdir

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-patch: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'range-v3-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-patch

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-test: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'range-v3-populate'"
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-test
	cd C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild

range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-update: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No update step for 'range-v3-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E touch C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/range-v3-subbuild/range-v3-populate-prefix/src/range-v3-populate-stamp/range-v3-populate-update

range-v3-populate: CMakeFiles\range-v3-populate
range-v3-populate: CMakeFiles\range-v3-populate-complete
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-build
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-configure
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-download
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-install
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-mkdir
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-patch
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-test
range-v3-populate: range-v3-populate-prefix\src\range-v3-populate-stamp\range-v3-populate-update
range-v3-populate: CMakeFiles\range-v3-populate.dir\build.make
.PHONY : range-v3-populate

# Rule to build all files generated by this target.
CMakeFiles\range-v3-populate.dir\build: range-v3-populate
.PHONY : CMakeFiles\range-v3-populate.dir\build

CMakeFiles\range-v3-populate.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\range-v3-populate.dir\cmake_clean.cmake
.PHONY : CMakeFiles\range-v3-populate.dir\clean

CMakeFiles\range-v3-populate.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild C:\Users\eduar\CLionProjects\pcc176_tpFinal\cmake-build-debug\_deps\range-v3-subbuild\CMakeFiles\range-v3-populate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\range-v3-populate.dir\depend

