#include "sign_detection.hpp"
#include <boost/shared_ptr.hpp>

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/dnn/dnn.hpp>
#include <opencv2/dnn.hpp>
#include <cv_bridge/cv_bridge.h>
//ROS

#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <std_msgs/Int8.h>
#include <ros/time.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>


namespace sign_detection_ros_tool {
using namespace std;
//show the classIds size
void ShowVec(const vector<int >& valList)
{
    int count = valList.size();
    for (int i = 0; i < count;i++)
    {
        std::cout << valList[i]<< std::endl;
    }
}

//show the names
void ShowVec(const vector<cv::String>& valList)
{
    int count = valList.size();
    for (int i = 0; i < count;i++)
    {
        std::cout << valList[i]<< std::endl;
    }
}


void ShowVec(const vector<cv::Mat>& valList)
{
    int count = valList.size();
    for (int i = 0; i < count;i++)
    {
        vector<int> valSize;
        valSize.push_back(valList[i].total());
        vector<int>::iterator biggest = max_element(std::begin(valSize), std::end(valSize));
        cout << *biggest << endl;
    }
}
    vector<string> classes;//储存名字的容器
    float confThreshold = 0.9;//置信度阈值
    float nmsThreshold = 0.4;//非最大抑制阈值
    int inpWidth = 218;//网络输入图片宽度
    int inpHeight = 218;//网络输入图片高度
    int count = 0;



  void SignDetection::postprocess(cv::Mat& frame,const vector<cv::Mat>& outs,cv::Mat& depthimage,int camerafactor) {

        vector<int> classIds;//储存识别类的索引
        //std::cout<< classIds<<std::endl;
        vector<float> confidences;//储存置信
        vector <cv::Rect> boxes;//储存边框


        for (size_t i = 0; i < outs.size(); i++) {
            //从网络输出中扫描所有边界框
            //保留高置信度选框
            //目标数据data:x,y,w,h为百分比，x,y为目标中心点坐标
            float frame_z;

            float *data = (float *) outs[i].data;
            frame_z = depthimage.at<short>((int) (data[0] * frame.cols),(int) (data[1] * frame.rows);)/camerafactor;
            for (int j = 0; j < outs[i].rows; j++, data += outs[i].cols) {
                cv::Mat scores = outs[i].row(j).colRange(5, outs[i].cols);
                cv::Point classIdPoint;
                double confidence;//置信度
                //取得最大分数值与索引
                cv::minMaxLoc(scores, 0, &confidence, 0, &classIdPoint);
                if (confidence > confThreshold && frame_z<2.0f) {
                    int centerX = (int) (data[0] * frame.cols);
                    int centerY = (int) (data[1] * frame.rows);
                    int width = (int) (data[2] * frame.cols);
                    int height = (int) (data[3] * frame.rows);
                    int left = centerX - width / 2;
                    int top = centerY - height / 2;

                    classIds.push_back(classIdPoint.x);
                    confidences.push_back((float) confidence);
                    boxes.push_back(cv::Rect(left, top, width, height));
                }

            }

        }
        //低置信度
        vector<int> indices;//保存没有重叠边框的索引
        //该函数用于抑制重叠边框
        cv::dnn::NMSBoxes(boxes,confidences,confThreshold,nmsThreshold,indices);
        for(size_t i=0;i<indices.size();i++){
            int idx = indices[i];
            cv::Rect box = boxes[idx];
            drawPred(classIds[idx],confidences[idx],box.x,box.y,
                     box.x+box.width,box.y+box.height,frame);
        }
    }
//画出预测边界框
  void SignDetection::drawPred(int classId,float conf,int left,int top,int right,int bottom,cv::Mat& frame) {//绘制边界框
        cv::rectangle(frame, cv::Point(left, top), cv::Point(right, bottom), cv::Scalar(255, 178, 50), 3);

        string label = cv::format("%.2f", conf);
        if (!classes.empty()) {
            CV_Assert(classId < (int) classes.size());
            label = classes[classId] + ":" + label;//边框上的类别标签与置信度

            //std::cout<<label<<std::endl;
            if(label.size()==9){
               std::cout<<"the sign is stop"<<std::endl;
               std::cout<<label<<std::endl;
               pub_stop.publish(4);
            }
            else if (label.size()==16){
               std::cout<<"the sign is go_straight"<<std::endl;
               std::cout<<label<<std::endl;
               pub_go_direction.publish(0);
            }
            else if (label.size()==14){
               std::cout<<"the sign is turn_left"<<std::endl;
               std::cout<<label<<std::endl;
               pub_go_direction.publish(2);
            }
            else if (label.size()==15){
               std::cout<<"the sign is turn_right"<<std::endl;
               std::cout<<label<<std::endl;
               pub_go_direction.publish(1);
            }
            else{
               std::cout<<"no signs detected"<<std::endl;
            }
          }
               
        
       
        int baseLine;
        cv::Size labelSize = cv::getTextSize(label, cv::FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);
        top = max(top, labelSize.height);
        cv::rectangle(frame, cv::Point(left, top - round(1.5 * labelSize.height)),
                      cv::Point(left + round(1.5 * labelSize.width), top + baseLine), cv::Scalar(255, 255, 255),
                      cv::FILLED);
        cv::putText(frame, label, cv::Point(left, top), cv::FONT_HERSHEY_SIMPLEX, 0.75, cv::Scalar(0, 0, 0), 1);
    }


    //输出层的名字
  vector<cv::String> SignDetection:: getOutputNames(const cv::dnn::Net& net){
        static vector<cv::String> names;
        if(names.empty()) {
            //取得输出层指标
            vector<int> outLayers = net.getUnconnectedOutLayers();
            vector <cv::String> layersNames = net.getLayerNames();
            //取得输出层名字
            names.resize(outLayers.size());
            for (size_t i = 0; i < outLayers.size(); i++) {
                names[i] = layersNames[outLayers[i] - 1];
            }
           
        }

        
        //ShowVec(names);
       
        /*for (int i=0; i<names.size(); i++) {
          
          std::cout<<names[i]<<","<<names[i].length()<<std::endl;
          if (names[i].size()==9){
               std::cout<<"the sign is stop"<<std::endl;}
          else if (names[i].size()==16){
               std::cout<<"the sign is go_straight"<<std::endl;
          }
          else if (names[i].size()==14){
               std::cout<<"the sign is turn_left"<<std::endl;
          }
          else {
               std::cout<<"the sign is turn_right"<<std::endl;
          }
        }*/
        return names;

    }


  SignDetection::SignDetection(ros::NodeHandle nhPublic, ros::NodeHandle nhPrivate)
            : interface_{nhPrivate}, reconfigureServer_{nhPrivate} {

        /**
         * Initialization
         */
        interface_.fromParamServer();

        image_subscriber = nhPublic.subscribe("/kinect2/qhd/image_color_rect", interface_.queue_size, &SignDetection::callbackImage, this);
        camera_factor_subscriber = nhPublic.subscribe("/kinect2/qhd/camera_info", interface_.queue_size, &SignDetection::callbackImage, this);
        depth_image_subscriber = nhPublic.subscribe("/kinect2/qhd/image_depth_rect", interface_.queue_size, &SignDetection::callbackImage, this);
        subscriber_camera_time_ = nhPublic.subscribe("/kinect2/qhd/camera_info", interface_.queue_size, &SignDetection::setupIntrinsics, this, ros::TransportHints().tcpNoDelay());
        pub_signs =nhPublic.advertise<sensor_msgs::Image>("/sign_detection/detected_signs",interface_.queue_size);
        pub_stop =nhPublic.advertise<std_msgs::Int8>("/stop/detected_signs",interface_.queue_size);
        pub_go_direction =nhPublic.advertise<std_msgs::Int8>("/go_direction/detected_signs",interface_.queue_size);
      
        
        //pub_signs_num =nhPublic.advertise<std_msgs::Int16>("/sign_detection/num",interface_.queue_size);

        /**
         * Set up callbacks for subscribers and reconfigure.
         *
         * New subscribers can be created with "add_subscriber" in "cfg/SignDetection.if file.
         * Don't forget to register your callbacks here!
         */
        reconfigureServer_.setCallback(boost::bind(&SignDetection::reconfigureRequest, this, _1, _2));
        interface_.dummy_subscriber->registerCallback(&SignDetection::callbackSubscriber, this);

        rosinterface_handler::showNodeInfo();
    }


  void SignDetection::callbackSubscriber(const Msg::ConstPtr& msg) {

        // do your stuff here...
        Msg::Ptr newMsg = boost::make_shared<Msg>(*msg);
        interface_.dummy_publisher.publish(newMsg);
    }

  void SignDetection::setupIntrinsics(const sensor_msgs::CameraInfo::ConstPtr& camera_info) {
        camera_time_globa = *camera_info;
    }

  void SignDetection::callbackImage(const sensor_msgs::Image::ConstPtr& msg, const sensor_msgs::ImageConstPtr& msg2, const sensor_msgs::CameraInfo::ConstPtr& msg3){

        string classesFile = "/home/kal5/Desktop/voc.names";//coco.names包含80种不同的类名
        ifstream ifs(classesFile.c_str());
        string line;
        while(getline(ifs,line))classes.push_back(line);

        //取得模型的配置和权重文件
        cv::String modelConfiguration = "/home/kal5/Desktop/yolov3-tiny.cfg";
        cv::String modelWeights = "/home/kal5/Desktop/yolov3-tiny_20000.weights";

        //加载网络
        cv::dnn::Net net = cv::dnn::readNetFromDarknet(modelConfiguration,modelWeights);
        net.setPreferableBackend(cv::dnn::DNN_BACKEND_OPENCV);
        net.setPreferableBackend(cv::dnn::DNN_TARGET_CPU);


        //打开视频文件或者图形文件或者相机数据流
        string str, outputFile;
        cv::Mat frame,blob,depthimage;
        int camerafactor = msg3.camera_factor;

        //取每帧图像
        //convert ros depth image to opencv depth image
        cv_bridge::CvImagePtr cv_ptr2;
        cv_ptr2=cv_bridge::yoCvCopy(msg2,sensor_msgs::image_encodings::TYPE_16UC1);
        cv_ptr2->image.copyTo(depthimage);
        /*for(std::size_t v=200; v<depthimage.rows;v++)
            for(std::size_t u=0; u<depthimage.cols;u++){
                frame_z = depthimage.at<short>(v,u)/camera_info.camera_factor;
                frame_x =(u-camera_info.cx)*frame_z/camera_info.fx;
                frame_y =(v-camera_info.cy)*frame_z/camera_info.fy;
          }
        */
        //convert ros color image to opencv color image
        cv_bridge::CvImagePtr cv_ptr1;
        cv_ptr1 = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        frame=cv_ptr1->image;



        cv::dnn::blobFromImage(frame, blob, 1 / 255.0, cv::Size(inpWidth, inpHeight), cv::Scalar(0,0,0), true, false);
        //设置输入网络
        net.setInput(blob);
        //设置输出层
        vector <cv::Mat> outs;//储存识别结果
        net.forward(outs, getOutputNames(net));

        //移除低置信度边界框
        postprocess(frame, outs, depthimage,camerafactor);

        //显示s延时信息并绘制
        vector<double> layersTimes;
        double freq = cv::getTickFrequency() / 1000;

        double t = net.getPerfProfile(layersTimes) / freq;
        string label = cv::format("Infercence time for a frame:%.2f ms", t);
        cv::putText(frame, label, cv::Point(0, 15), cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 255, 255));


        //绘制识别框
        cv::Mat detecteFrame;

        //publish ros images
        frame.convertTo(detecteFrame, CV_8U);
        sensor_msgs::ImagePtr ros_image=cv_bridge::CvImage(std_msgs::Header(),"bgr8",frame).toImageMsg();

        pub_signs.publish(ros_image);

        //static const string kWinName = "识别框";
        //cv::namedWindow(kWinName,cv::WINDOW_AUTOSIZE);
        //cv::imshow(kWinName, frame);
        //cv::waitKey(125);
        //cv::destroyWindow(kWinName);
        //++count;
       



    }

/**
 * This callback is called at startup or whenever a change was made in the dynamic_reconfigure window
 **/
  void SignDetection::reconfigureRequest(const Interface::Config& config, uint32_t level) {
        interface_.fromConfig(config);
    }


} // namespace sign_detection_ros_tool
