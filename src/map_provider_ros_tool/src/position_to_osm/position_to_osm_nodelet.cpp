#include <memory>
#include <nodelet/nodelet.h>
#include <pluginlib/class_list_macros.h>

#include "position_to_osm.hpp"

namespace map_provider_ros_tool {

class PositionToOsmNodelet : public nodelet::Nodelet {

    inline void onInit() override {
        impl_ = std::make_unique<PositionToOsm>(getNodeHandle(), getPrivateNodeHandle());
    }
    std::unique_ptr<PositionToOsm> impl_;
};
} // namespace map_provider_ros_tool

PLUGINLIB_EXPORT_CLASS(map_provider_ros_tool::PositionToOsmNodelet, nodelet::Nodelet);
