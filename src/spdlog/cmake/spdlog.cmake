# Add definition to downstream packages, that spdlog should use an external fmt.
add_definitions(-DSPDLOG_COMPILED_LIB -DSPDLOG_FMT_EXTERNAL)