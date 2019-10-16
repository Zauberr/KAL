#pragma once
#include <memory>
#include <sstream>
#include <vector>

#include <spdlog/common.h>
#include <spdlog/logger.h>
#include <spdlog/sinks/null_sink.h>

#include "prettyprint.hpp"

namespace generic_logger {
namespace level {
using namespace spdlog::level;
} // namespace level

/**
 * Extend the spd_logger to make sink and name changes possible.
 * This can't be done inside the singleton
 */
class Logger : public spdlog::logger {
    // Specify that base class constructors will be inherited
    using spdlog::logger::logger;

public:
    void set_sink(spdlog::sink_ptr sink);
    void set_sinks(std::vector<spdlog::sink_ptr>& newSinks);
    void set_name(const std::string& name);
};

/**
 * Create a singleton, so that tools can change logging behaviour and sink for libraries
 */
class LoggerSingleton {
public:
    static Logger& getInstance();

    // You want to make sure to delete these methods,
    // otherwise you may accidentally get copies of your singleton appearing.
    LoggerSingleton(const LoggerSingleton&) = delete;
    void operator=(const LoggerSingleton&) = delete;
    LoggerSingleton(LoggerSingleton&&) = delete;
    void operator=(LoggerSingleton&&) = delete;

private:
    LoggerSingleton() = default;
};

/**
 * Pulling the set methods directly into our namespace
 */
void set_sinks(std::vector<spdlog::sink_ptr>& sinks);
void set_sink(spdlog::sink_ptr sink);
void set_level(spdlog::level::level_enum verbosity_level_enum);
void set_level(const std::string& verbosity_level_string);
std::string get_level();
void set_name(const std::string& name);
Logger& logger();

template <spdlog::level::level_enum LogLevel_>
class LogStream {
public:
    using CoutType = std::basic_ostream<char, std::char_traits<char>>;
    typedef CoutType& (*StandardEndLine)(CoutType&);

    LogStream() = default;
    LogStream(const LogStream&) = delete;
    LogStream& operator=(const LogStream&) = delete;

    template <typename T>
    LogStream& operator<<(T param) {
        ss << param;
        return *this;
    }

    LogStream& operator<<(StandardEndLine manip) {
        manip(ss);

        return *this;
    }

    ~LogStream() {
        logger().log(LogLevel_, ss.str());
    }

private:
    std::stringstream ss;
};

} // namespace generic_logger

/**
 * Define specific macros for fast access.
 * Note logger()->doSomething can still be used
 */
#define DEBUG_STREAM(args) generic_logger::LogStream<spdlog::level::level_enum::debug>() << args
#define INFO_STREAM(args) generic_logger::LogStream<spdlog::level::level_enum::info>() << args
#define WARN_STREAM(args) generic_logger::LogStream<spdlog::level::level_enum::warn>() << args
#define ERROR_STREAM(args) generic_logger::LogStream<spdlog::level::level_enum::err>() << args
