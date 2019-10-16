
#include "generic_logger.hpp"

namespace generic_logger {

void Logger::set_sink(spdlog::sink_ptr sink) {
    auto sink_vtr = std::vector<spdlog::sink_ptr>{sink};
    set_sinks(sink_vtr);
};

void Logger::set_sinks(std::vector<spdlog::sink_ptr>& newSinks) {
    sinks().swap(newSinks);
}

void Logger::set_name(const std::string& name) {
    name_ = name;
}

Logger& LoggerSingleton::getInstance() {
    static auto sink = std::make_shared<spdlog::sinks::null_sink_mt>();
    static Logger instance("generic_logger", sink); // Guaranteed to be destroyed.
    // Instantiated on first use.
    return instance;
}

void set_sinks(std::vector<spdlog::sink_ptr>& sinks) {
    LoggerSingleton::getInstance().set_sinks(sinks);
}

void set_sink(spdlog::sink_ptr sink) {
    LoggerSingleton::getInstance().set_sink(std::move(sink));
}

void set_level(spdlog::level::level_enum verbosity_level_enum) {
    LoggerSingleton::getInstance().set_level(verbosity_level_enum);
}

void set_level(const std::string& verbosity_level_string) {
    LoggerSingleton::getInstance().set_level(spdlog::level::from_str(verbosity_level_string));
}
std::string get_level() {
    return spdlog::level::to_short_c_str(LoggerSingleton::getInstance().level());
}

void set_name(const std::string& name) {
    LoggerSingleton::getInstance().set_name(name);
}

Logger& logger() {
    return LoggerSingleton::getInstance();
}
} // namespace generic_logger
