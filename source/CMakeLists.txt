#######################################################
### Dependencies                                    ###
#######################################################
# Threads
find_package(Threads)

# Ranges library
CPMAddPackage(NAME range-v3 URL https://github.com/ericniebler/range-v3/archive/0.11.0.zip VERSION 0.11.0 DOWNLOAD_ONLY TRUE)
add_library(range-v3 INTERFACE IMPORTED portfolio/portfolio.cpp portfolio/portfolio.h)
target_include_directories(range-v3 INTERFACE "${range-v3_SOURCE_DIR}/include")

#Library pareto
FetchContent_Declare(pareto
        GIT_REPOSITORY https://github.com/alandefreitas/pareto
        GIT_TAG v1.2.0
        )

FetchContent_GetProperties(pareto)
if (NOT pareto_POPULATED)
    FetchContent_Populate(pareto)
    add_subdirectory(${pareto_SOURCE_DIR} ${pareto_BINARY_DIR} EXCLUDE_FROM_ALL)
endif ()

#Library matplot
FetchContent_Declare(matplotplusplus
        GIT_REPOSITORY https://github.com/alandefreitas/matplotplusplus
        GIT_TAG v1.1.0
        )

FetchContent_GetProperties(matplotplusplus)
if (NOT matplotplusplus_POPULATED)
    FetchContent_Populate(matplotplusplus)
    add_subdirectory(${matplotplusplus_SOURCE_DIR} ${matplotplusplus_BINARY_DIR} EXCLUDE_FROM_ALL)
endif ()

#######################################################
### Library                                         ###
#######################################################

add_library(portfolio
        portfolio/portfolio.h
        portfolio/portfolio.cpp
        portfolio/portfolio_problem.h
        portfolio/portfolio_problem.cpp
        portfolio/market_data.h
        portfolio/market_data.cpp
        portfolio/descida.h
        portfolio/descida.cpp
        portfolio/VNS.h
        portfolio/VNS.cpp
        portfolio/SA.h
        portfolio/SA.cpp)

target_include_directories(portfolio
        PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)


target_link_libraries(portfolio PUBLIC Threads::Threads range-v3 pareto Matplot++::matplot)
target_pedantic_options(portfolio)
target_exception_options(portfolio)