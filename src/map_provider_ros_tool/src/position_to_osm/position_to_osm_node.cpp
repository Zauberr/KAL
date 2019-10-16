#include "position_to_osm.hpp"

int main(int argc, char* argv[]) {

    ros::init(argc, argv, "position_to_osm_node");

    map_provider_ros_tool::PositionToOsm position_to_osm(ros::NodeHandle(), ros::NodeHandle("~"));

    ros::spin();
    return EXIT_SUCCESS;
}
