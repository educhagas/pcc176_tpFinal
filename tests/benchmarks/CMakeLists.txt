#######################################################
### Google benchmark                                ###
#######################################################
CPMAddPackage(
        NAME benchmark
        GITHUB_REPOSITORY google/benchmark
        VERSION 1.5.1
        OPTIONS
        "BENCHMARK_ENABLE_TESTING Off"
        "LLVMAR_EXECUTABLE ON"
        "LLVMNM_EXECUTABLE ON"
        "LLVMRANLIB_EXECUTABLE ON"
        "GCC_AR ON"
        "GCC_RANLIB ON"
        "BENCHMARK_ENABLE_INSTALL OFF"
)

if (benchmark_ADDED)
    # patch google benchmark target
    set_target_properties(benchmark PROPERTIES CXX_STANDARD 17)
    target_compile_definitions(benchmark PUBLIC -DNDEBUG)
endif()

#######################################################
### Portfolio benchmarks                            ###
#######################################################
# run with "--benchmark_repetitions=30 --benchmark_display_aggregates_only=true --benchmark_out=data_feed_benchmark.csv --benchmark_out_format=csv"