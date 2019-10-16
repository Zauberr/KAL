#include "position_to_osm.hpp"

namespace map_provider_ros_tool {

PositionToOsm::PositionToOsm(ros::NodeHandle nhPublic, ros::NodeHandle nhPrivate)
        : interface_{nhPrivate}, reconfigureServer_{nhPrivate},tfListener_{tfBuffer_} {

    /**
     * Initialization
     */
    interface_.fromParamServer();

    /**
     * Set up callbacks for subscribers and reconfigure.
     *
     * New subscribers can be created with "add_subscriber" in "cfg/PositionToOsm.if file.
     * Don't forget to register your callbacks here!
     */
    reconfigureServer_.setCallback(boost::bind(&PositionToOsm::reconfigureRequest, this, _1, _2));
    interface_.dummy_subscriber->registerCallback(&PositionToOsm::callbackSubscriber, this);

    rosinterface_handler::showNodeInfo();

    osm = new TiXmlElement("osm");
    osm->SetAttribute("version","0.6");
    ros::Rate loop_rate(15);

    while(ros::ok()){

        if(!createFromBag()){
        //if(!createGrid()){
            ROS_INFO_STREAM("finish");
            return;
        }

        ros::spinOnce();
        loop_rate.sleep();
    }

}

void PositionToOsm::callbackSubscriber(const Msg::ConstPtr& msg) {

    // do your stuff here...
    Msg::Ptr newMsg = boost::make_shared<Msg>(*msg);
    interface_.dummy_publisher.publish(newMsg);
}

/**
 * This callback is called at startup or whenever a change was made in the dynamic_reconfigure window
 */
void PositionToOsm::reconfigureRequest(const Interface::Config& config, uint32_t level) {
    interface_.fromConfig(config);
}

bool PositionToOsm::createFromBag(){
    double x;
    double y;
    try{
        const geometry_msgs::TransformStamped tf_ros = tfBuffer_.lookupTransform("world", "vehicle_front_axle", ros::Time(0));

    }catch (const tf2::TransformException& e){
        ROS_INFO_STREAM("not working");
        return true;
    }
    const geometry_msgs::TransformStamped tf_ros = tfBuffer_.lookupTransform("world", "vehicle_front_axle", ros::Time(0));
    x = (double)tf_ros.transform.translation.x;
    y = (double)tf_ros.transform.translation.y;

    ROS_INFO_STREAM("X: " << x);
    ROS_INFO_STREAM("Y: " << y);

    nodeID--;
    TiXmlElement* node = new TiXmlElement("node");
    node->SetAttribute("lat", boost::lexical_cast<std::string>(y));
    node->SetAttribute("lon", boost::lexical_cast<std::string>(x));
    node->SetAttribute("visible", "true");
    node->SetAttribute("id", nodeID);

    TiXmlElement* tag = new TiXmlElement("tag");
    tag->SetAttribute("k", "real_id");
    tag->SetAttribute("v",nodeID);
    node->LinkEndChild(tag);
    osm->LinkEndChild(node);


    ROS_INFO_STREAM(boost::lexical_cast<std::string>(tf_ros.header.stamp.toSec()));
    if(tf_ros.header.stamp.toSec() >=  1563367632)
    {
        doc.LinkEndChild(osm);
        doc.SaveFile("myxml2.osm");

        return false;
    }
    return true;
}

    bool PositionToOsm::createGrid(){
        double x;
        double y;
        for(double i = 0; i<=17;i = i+0.05){
            for(double j = -0.5;j<=6;j = j+0.05){
                nodeID--;
                TiXmlElement* node = new TiXmlElement("node");
                node->SetAttribute("lat", boost::lexical_cast<std::string>(j));
                node->SetAttribute("lon", boost::lexical_cast<std::string>(i));
                node->SetAttribute("visible", "true");
                node->SetAttribute("id", nodeID);

                TiXmlElement* tag = new TiXmlElement("tag");
                tag->SetAttribute("k", "real_id");
                tag->SetAttribute("v",nodeID);
                node->LinkEndChild(tag);
                osm->LinkEndChild(node);

            }

        }
            doc.LinkEndChild(osm);
            doc.SaveFile("myxml3.osm");


        return false;
    }


} // namespace map_provider_ros_tool
