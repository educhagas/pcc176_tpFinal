# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.21.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(range-v3-populate NONE)


include(ExternalProject)
ExternalProject_Add(range-v3-populate
        "UPDATE_DISCONNECTED" "False" "URL" "https://github.com/ericniebler/range-v3/archive/0.11.0.zip" "GIT_TAG" "v0.11.0"
        SOURCE_DIR "C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/range-v3-src"
        BINARY_DIR "C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/range-v3-build"
        CONFIGURE_COMMAND ""
        BUILD_COMMAND ""
        INSTALL_COMMAND ""
        TEST_COMMAND ""
        USES_TERMINAL_DOWNLOAD YES
        USES_TERMINAL_UPDATE YES
        )


