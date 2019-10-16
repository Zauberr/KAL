#include <ros/ros.h>
#include <std_msgs/Header.h>
#include "initialization.hpp"
#include "listener.hpp"
#include "time_controller.hpp"
#include "gtest/gtest.h"

// fake node responds to every message (on /out) with the current time (on /in)
struct FakeNode {
    FakeNode() {
        ros::NodeHandle nh;
        subscriber = nh.subscribe("/out", 1, &FakeNode::onMessage, this);
        publisher = nh.advertise<std_msgs::Header>("/in", 1);
    }
    void onMessage(const std_msgs::Header::Ptr& /*message*/) {
        std::this_thread::sleep_for(std::chrono::milliseconds(50));
        std_msgs::Header header;
        header.stamp = ros::Time::now();
        publisher.publish(header);
    }

    ros::Subscriber subscriber;
    ros::Publisher publisher;
};

TEST(UtilsTestingRos, timeController) {
    ros::NodeHandle nh;

    nh.setParam("/use_sim_time", false);

    // should throw - no use sim time. Nolinted because of warnings in macro.
    EXPECT_ANY_THROW(util_testing::TimeController()); // NOLINT

    nh.setParam("/use_sim_time", true);

    util_testing::TimeController time(ros::Time::now() + ros::Duration(1));
    time.advance(ros::Duration(1));
    std::this_thread::sleep_for(std::chrono::milliseconds(50));
    EXPECT_EQ(time.timeNow, ros::Time::now());
}

TEST(UtilsTestingRos, initialization) {
    ros::NodeHandle nh;

    auto pub = nh.advertise<std_msgs::Header>("/out", 1);
    // should return false - no one here to subscribe
    EXPECT_FALSE(util_testing::waitForInitalization({pub}, ros::Duration(0.1)));

    FakeNode node;
    EXPECT_TRUE(util_testing::waitForInitalization({pub}));
}

TEST(UtilsTestingRos, listener) {
    using util_testing::Listener;
    Listener<std_msgs::Header> listener("/in");

    // should fail - no one here to publish stuff
    EXPECT_TRUE(!listener.waitForMessage(ros::Duration(0.1)));

    FakeNode node;
    ros::NodeHandle nh;
    nh.setParam("/use_sim_time", true);
    auto pub = nh.advertise<std_msgs::Header>("/out", 1);
    util_testing::TimeController time(ros::Time::now() + ros::Duration(1));

    EXPECT_TRUE(util_testing::waitForInitalization({pub}));

    time.advance();

    pub.publish(std_msgs::Header());

    ASSERT_TRUE(listener.waitForMessage().get());

    EXPECT_EQ(listener.msg->stamp, time.timeNow);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "unittest");
    testing::InitGoogleTest(&argc, argv);
    ros::AsyncSpinner spinner(1);
    spinner.start();
    int ret = RUN_ALL_TESTS();
    spinner.stop();
    ros::shutdown();
    return ret;
}
