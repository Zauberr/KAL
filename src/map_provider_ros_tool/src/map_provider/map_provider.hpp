#pragma once

#include <dynamic_reconfigure/server.h>
#include <ros/forwards.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>
#include <tinyxml.h>
#include <ros/ros.h>
#include <ros/console.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/Pose.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/MapMetaData.h>
#include <ros/package.h>
#include <std_msgs/Int8.h>

#include "map_provider_ros_tool/MapProviderInterface.h"

namespace map_provider_ros_tool {

class MapProvider {

    using Interface = MapProviderInterface;

    using Msg = std_msgs::Header;

public:
    MapProvider(ros::NodeHandle, ros::NodeHandle);

    static const int GRID_WIDTH;
    static const int GRID_HEIGHT;

private:
    void reconfigureRequest(const Interface::Config&, uint32_t);

    std::vector<int8_t> inflate(std::vector<int8_t>,int);
    std::vector<int8_t> importXML(std::string);

    Interface interface_;
    ros::Publisher pub_;
    dynamic_reconfigure::Server<Interface::Config> reconfigureServer_;


    tf2_ros::Buffer tfBuffer_;
    tf2_ros::TransformListener tfListener_{tfBuffer_};
    tf2_ros::TransformBroadcaster tfBroadcaster_;

    TiXmlDocument doc;
    TiXmlElement* osm;
    int nodeID = 0;

    nav_msgs::OccupancyGrid grid_pub;
};
} // namespace map_provider_ros_tool
