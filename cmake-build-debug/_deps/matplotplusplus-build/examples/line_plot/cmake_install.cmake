# Install script for directory: C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-src/examples/line_plot

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
        set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/plot/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/plot3/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/stairs/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/errorbar/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/area/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/loglog/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/semilogx/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/semilogy/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/fplot/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/fplot3/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/line_plot/fimplicit/cmake_install.cmake")
endif ()
