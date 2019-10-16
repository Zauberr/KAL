#include <memory>
#include <nodelet/nodelet.h>
#include <pluginlib/class_list_macros.h>

#include "map_provider.hpp"

namespace map_provider_ros_tool {

class MapProviderNodelet : public nodelet::Nodelet {

    inline void onInit() override {
        impl_ = std::make_unique<MapProvider>(getNodeHandle(), getPrivateNodeHandle());
    }
    std::unique_ptr<MapProvider> impl_;
};
} // namespace map_provider_ros_tool

PLUGINLIB_EXPORT_CLASS(map_provider_ros_tool::MapProviderNodelet, nodelet::Nodelet);
