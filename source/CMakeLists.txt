#######################################################
### Dependencies                                    ###
#######################################################
# Threads
find_package(Threads)

# Ranges library
CPMAddPackage(NAME range-v3 URL https://github.com/ericniebler/range-v3/archive/0.11.0.zip VERSION 0.11.0 DOWNLOAD_ONLY TRUE)
add_library(range-v3 INTERFACE IMPORTED portfolio/portfolio.cpp portfolio/portfolio.h)
target_include_directories(range-v3 INTERFACE "${range-v3_SOURCE_DIR}/include")

#######################################################
### Library                                         ###
#######################################################

add_library(portfolio
        portfolio/portfolio.h
        portfolio/portfolio.cpp
        portfolio/portfolio_problem.h
        portfolio/portfolio_problem.cpp
        )

target_include_directories(portfolio
        PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)


target_link_libraries(portfolio PUBLIC Threads::Threads range-v3)
target_pedantic_options(portfolio)
target_exception_options(portfolio)