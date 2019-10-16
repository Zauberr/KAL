#include "map_provider.hpp"
namespace map_provider_ros_tool {

    const int MapProvider::GRID_WIDTH = 340;
    const int MapProvider::GRID_HEIGHT = 131;

MapProvider::MapProvider(ros::NodeHandle nhPublic, ros::NodeHandle nhPrivate)
        : interface_{nhPrivate}, reconfigureServer_{nhPrivate} {

    /**
     * Initialization
     */
    interface_.fromParamServer();
    pub_ = nhPrivate.advertise<nav_msgs::OccupancyGrid>("map",10);
    /**
     * Set up callbacks for subscribers and reconfigure.
     *
     * New subscribers can be created with "add_subscriber" in "cfg/MapProvider.if file.
     * Don't forget to register your callbacks here!
     */
    reconfigureServer_.setCallback(boost::bind(&MapProvider::reconfigureRequest, this, _1, _2));

    rosinterface_handler::showNodeInfo();


    //[254*131];

    grid_pub.data = importXML("occupancy_grid.osm");

    grid_pub.data = inflate(grid_pub.data,4);



    grid_pub.header.frame_id="world";
    nav_msgs::MapMetaData info;
    info.width = GRID_WIDTH;
    info.height = GRID_HEIGHT;
    geometry_msgs::Pose pose;
    pose.position.x = 0;
    pose.position.y = -0.5;
    pose.position.z = 0;
    info.origin = pose;
    info.resolution = 0.05;
    grid_pub.info = info;


    ros::Rate loop_rate(0.25);
    while(ros::ok()){
        grid_pub.header.seq++;
        grid_pub.header.stamp = ros::Time::now();
        pub_.publish(grid_pub);

        ros::spinOnce();
        loop_rate.sleep();
        ROS_INFO_STREAM("New Map Published");
    }



}



void MapProvider::reconfigureRequest(const Interface::Config& config, uint32_t level) {
    interface_.fromConfig(config);
}


std::vector<int8_t> MapProvider::importXML(std::string filename){
    //todo use meta data
    std::vector<int8_t> grid;//[33275];
    grid.assign(GRID_HEIGHT*GRID_WIDTH,0);
    TiXmlDocument costs( ros::package::getPath("map_provider_ros_tool") + "/res/" +filename);
    if(costs.LoadFile()){
        ROS_INFO_STREAM("Found xml");
        TiXmlElement *root, *node;
        root = costs.FirstChildElement("osm");
        if(root){
            node = root->FirstChildElement("node");
            while(node){
                double x = std::stod(node->Attribute("lon"));
                double y = std::stod(node->Attribute("lat"));
                double x_pos = round(x/0.05);
                double y_pos = round((y+0.5)/0.05);

                TiXmlElement *tag = node->FirstChildElement("tag");
                std::string attribute = tag->Attribute("k");
                if(!(attribute.compare("colour")==0)){
                    tag = tag->NextSiblingElement("tag");

                }
                std::string color = "";
                if(tag) {
                    color = tag->Attribute("v");
                }

                if(tag && (color.compare("white")==0 || color.compare("red")==0)){
                    //ROS_INFO_STREAM("occupied");
                    grid[(int)x_pos+(int)y_pos*GRID_WIDTH] = 100;

                }else if(tag && color.compare("blue")==0){
                    //ROS_INFO_STREAM("not occupied");
                    grid[(int)x_pos+(int)y_pos*GRID_WIDTH] = 50;
                    //ROS_INFO_STREAM("something blue was found");

                }else{
                    grid[(int)x_pos+(int)y_pos*GRID_WIDTH] = 0;
                }
                node = node->NextSiblingElement("node");
            }
        }


    }else{
        ROS_INFO_STREAM("Couldn't find xml " + filename);
    }
    return grid;
}


std::vector<int8_t> MapProvider::inflate(std::vector<int8_t> grid,int rad){
    std::vector<int8_t> newgrid = grid ;
    for(int i = 0;i<GRID_HEIGHT;i++){//todo do with meta data
        for(int j = 0;j<GRID_WIDTH;j++){
            if((int)grid[j+i*GRID_WIDTH] == 100){

                for(int n = i-rad; n <= i+rad;n++){
                    for(int k = j-rad; k <= j+rad;k++){
                        if(n>=0&&n<GRID_HEIGHT&&k>=0&&k<GRID_WIDTH){
                            int dist_i = i-n;
                            int dist_j = j-k;
                            int dist = std::sqrt(dist_i*dist_i + dist_j*dist_j);
                            if(dist<=rad){
                                newgrid[k+n*GRID_WIDTH] = std::max((int)grid[k+n*GRID_WIDTH],80);
                            }
                        }
                    }
                }
            }
        }
    }
    return newgrid;
}

} // namespace map_provider_ros_tool
