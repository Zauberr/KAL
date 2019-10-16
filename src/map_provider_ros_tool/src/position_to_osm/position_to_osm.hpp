#pragma once

#include <dynamic_reconfigure/server.h>
#include <ros/forwards.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>
#include <tinyxml.h>

#include "map_provider_ros_tool/PositionToOsmInterface.h"

namespace map_provider_ros_tool {

class PositionToOsm {

    using Interface = PositionToOsmInterface;

    using Msg = std_msgs::Header;

public:
    PositionToOsm(ros::NodeHandle, ros::NodeHandle);

private:
    void callbackSubscriber(const Msg::ConstPtr& msg);
    void reconfigureRequest(const Interface::Config&, uint32_t);
    bool createFromBag();
    bool createGrid();

    Interface interface_;
    dynamic_reconfigure::Server<Interface::Config> reconfigureServer_;

    tf2_ros::Buffer tfBuffer_;
    tf2_ros::TransformListener tfListener_;
    tf2_ros::TransformBroadcaster tfBroadcaster_;
    TiXmlDocument doc;
    TiXmlElement* osm;
    int nodeID = 0;


};
} // namespace map_provider_ros_tool
