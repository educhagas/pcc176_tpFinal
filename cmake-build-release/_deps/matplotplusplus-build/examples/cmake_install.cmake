# Install script for directory: C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-src/examples

# Set the install prefix
if (NOT DEFINED CMAKE_INSTALL_PREFIX)
    set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/pcc176_tpFinal")
endif ()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if (NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
    if (BUILD_TYPE)
        string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
                CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
    else ()
        set(CMAKE_INSTALL_CONFIG_NAME "Release")
    endif ()
    message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif ()

# Set the component getting installed.
if (NOT CMAKE_INSTALL_COMPONENT)
    if (COMPONENT)
        message(STATUS "Install component: \"${COMPONENT}\"")
        set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
    else ()
        set(CMAKE_INSTALL_COMPONENT)
    endif ()
endif ()

# Is this installation the result of a crosscompile?
if (NOT DEFINED CMAKE_CROSSCOMPILING)
    set(CMAKE_CROSSCOMPILING "FALSE")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/line_plot/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/data_distribution/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/discrete_data/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/geography/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/polar_plots/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/contour_plots/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/vector_fields/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/surfaces/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/graphs/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/images/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/annotations/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/appearance/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-release/_deps/matplotplusplus-build/examples/exporting/cmake_install.cmake")
endif ()

