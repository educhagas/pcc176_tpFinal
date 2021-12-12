# Install script for directory: C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-src/examples/data_distribution

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
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/histogram/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/boxplot/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/scatter/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/scatter3/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/binscatter/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/plotmatrix/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/parallelplot/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/pie/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/heatmap/cmake_install.cmake")
endif ()

if (NOT CMAKE_INSTALL_LOCAL_ONLY)
    # Include the install script for the subdirectory.
    include("C:/Users/eduar/CLionProjects/pcc176_tpFinal/cmake-build-debug/_deps/matplotplusplus-build/examples/data_distribution/wordcloud/cmake_install.cmake")
endif ()

