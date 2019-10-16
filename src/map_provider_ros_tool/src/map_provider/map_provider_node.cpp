#include "map_provider.hpp"

int main(int argc, char* argv[]) {

    ros::init(argc, argv, "map_provider_node");

    map_provider_ros_tool::MapProvider map_provider(ros::NodeHandle(), ros::NodeHandle("~"));

    ros::spin();
    return EXIT_SUCCESS;
}
