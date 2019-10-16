#pragma once
#include <iostream>
#include <memory>
#include <mutex>
#include <ostream>

#include <ros/console.h>
#include <spdlog/sinks/sink.h>

namespace generic_logger {
namespace sinks {

class ros_sink : public spdlog::sinks::base_sink<spdlog::details::null_mutex> {
protected:
    void sink_it_(const spdlog::details::log_msg& msg) override {
        switch (msg.level) {
        case spdlog::level::trace:
        case spdlog::level::debug:
            ROS_DEBUG_STREAM(msg.payload.data());
            break;
        case spdlog::level::info:
            ROS_INFO_STREAM(msg.payload.data());
            break;
        case spdlog::level::warn:
            ROS_WARN_STREAM(msg.payload.data());
            break;
        case spdlog::level::err:
        case spdlog::level::critical:
            ROS_ERROR_STREAM(msg.payload.data());
            break;
        default:
            /* do nothing */
            break;
        }
    }

    void flush_() override {
        std::cout << std::flush;
    }
};

} // namespace sinks
} // namespace generic_logger
