// Generated by gencpp from file automated_driving_msgs/BasicSafetyMessage.msg
// DO NOT EDIT!


#ifndef AUTOMATED_DRIVING_MSGS_MESSAGE_BASICSAFETYMESSAGE_H
#define AUTOMATED_DRIVING_MSGS_MESSAGE_BASICSAFETYMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <automated_driving_msgs/AdditionalHeaderForCommunication.h>
#include <automated_driving_msgs/ObjectState.h>

namespace automated_driving_msgs
{
template <class ContainerAllocator>
struct BasicSafetyMessage_
{
  typedef BasicSafetyMessage_<ContainerAllocator> Type;

  BasicSafetyMessage_()
    : header()
    , communication_header()
    , object_state()  {
    }
  BasicSafetyMessage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , communication_header(_alloc)
    , object_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator>  _communication_header_type;
  _communication_header_type communication_header;

   typedef  ::automated_driving_msgs::ObjectState_<ContainerAllocator>  _object_state_type;
  _object_state_type object_state;





  typedef boost::shared_ptr< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> const> ConstPtr;

}; // struct BasicSafetyMessage_

typedef ::automated_driving_msgs::BasicSafetyMessage_<std::allocator<void> > BasicSafetyMessage;

typedef boost::shared_ptr< ::automated_driving_msgs::BasicSafetyMessage > BasicSafetyMessagePtr;
typedef boost::shared_ptr< ::automated_driving_msgs::BasicSafetyMessage const> BasicSafetyMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace automated_driving_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/mrtros/share/std_msgs/cmake/../msg'], 'automated_driving_msgs': ['/home/kal5-2/rammbo/src/automated_driving_msgs/msg'], 'shape_msgs': ['/opt/mrtros/share/shape_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/mrtros/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4910487c17cc128536bd38cc71c97a5c";
  }

  static const char* value(const ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4910487c17cc1285ULL;
  static const uint64_t static_value2 = 0x36bd38cc71c97a5cULL;
};

template<class ContainerAllocator>
struct DataType< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "automated_driving_msgs/BasicSafetyMessage";
  }

  static const char* value(const ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Basic Safety Message\n"
"# License: BSD\n"
"\n"
"# Header\n"
"Header header\n"
"AdditionalHeaderForCommunication communication_header\n"
"\n"
"# Content: Own Object State\n"
"ObjectState object_state\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/AdditionalHeaderForCommunication\n"
"# Additional header for a communication message\n"
"# License: BSD\n"
"\n"
"# ObjectID of the sender\n"
"uint32 sender_id\n"
"\n"
"# Position of the sender at time of sending the message\n"
"geometry_msgs/PoseWithCovarianceStamped sender_pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovarianceStamped\n"
"# This expresses an estimated pose with a reference coordinate frame and timestamp\n"
"\n"
"Header header\n"
"PoseWithCovariance pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/ObjectState\n"
"# Message for the state of an object\n"
"# License: BSD\n"
"\n"
"# Header\n"
"Header header\n"
"\n"
"# Lifetime ID of the object\n"
"uint32 object_id\n"
"\n"
"# Existence measure\n"
"#    Range: [0, 1]\n"
"float32 existence_probability\n"
"\n"
"# Object classification\n"
"ObjectClassification classification\n"
"\n"
"# Motion state of the object\n"
"MotionState motion_state\n"
"\n"
"# Current motion prediction of the object\n"
"MotionPrediction motion_prediction\n"
"\n"
"# Standard Message for the object dimensions\n"
"#    Relative to motion_state/pose/pose\n"
"#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html\n"
"shape_msgs/Mesh hull\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/ObjectClassification\n"
"# Object Classification: classes with probabilities\n"
"# License: BSD\n"
"\n"
"# Possible Types (enum, to be extended)\n"
"uint8 UNCLASSIFIED=0\n"
"uint8 PEDESTRIAN=1\n"
"uint8 BICYCLE=2\n"
"uint8 MOTORBIKE=3\n"
"uint8 CAR=4\n"
"uint8 TRUCK=5\n"
"# Virtual Object (e.g. for behavior generation)\n"
"uint8 VIRTUAL_OBJECT=81\n"
"# If object class is definitely none of the upper, these classes are to be used\n"
"uint8 OTHER_STATIC=91\n"
"uint8 OTHER_DYNAMIC=92\n"
"\n"
"# The object classes with their respective probability\n"
"#    Sorted descending by probability (highest first)\n"
"ClassWithProbability[] classes_with_probabilities\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/ClassWithProbability\n"
"# One class with its respective probability\n"
"# License: BSD\n"
"\n"
"uint8 classification\n"
"\n"
"# Class probability\n"
"#    Range: [0, 1]\n"
"float32 probability\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/MotionState\n"
"# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.\n"
"# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)\n"
"# License: BSD\n"
"\n"
"# Header\n"
"#   frame_id of the global reference frame (common: \"map\", \"odom\")\n"
"Header header\n"
"\n"
"#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")\n"
"string child_frame_id\n"
"\n"
"# Pose (Position + Orientation)\n"
"#   must be specified in the coordinate frame given by header.frame_id\n"
"#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html\n"
"geometry_msgs/PoseWithCovariance pose\n"
"\n"
"# Velocity\n"
"#   must be specified in the coordinate frame given by child_frame_id\n"
"#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html\n"
"geometry_msgs/TwistWithCovariance twist\n"
"\n"
"# Acceleration\n"
"#   must be specified in the coordinate frame given by child_frame_id\n"
"#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html\n"
"geometry_msgs/AccelWithCovariance accel\n"
"\n"
"# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:\n"
"#\n"
"# If the covariance of the measurement is known, it should be filled in (if all you know is the\n"
"# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)\n"
"# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n"
"# data a covariance will have to be assumed or gotten from some other source\n"
"#\n"
"# If you have no estimate for one of the data elements, please set _the respective diagonal_ element\n"
"# of the associated covariance matrix to -1\n"
"# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements\n"
"# of each covariance matrix, and disregard the associated estimates.\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/AccelWithCovariance\n"
"# This expresses acceleration in free space with uncertainty.\n"
"\n"
"Accel accel\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/MotionPrediction\n"
"# Message for the prediction of an object\n"
"# License: BSD\n"
"\n"
"# Header\n"
"Header header\n"
"\n"
"# Possible Trajectories (including their probability)\n"
"#    Sorted descending by probability (highest first)\n"
"Trajectory[] trajectories\n"
"\n"
"================================================================================\n"
"MSG: automated_driving_msgs/Trajectory\n"
"# Message representing a trajectory as consecutive motion states\n"
"# NOTE: not compatible to http://wiki.ros.org/trajectory_msgs\n"
"# License: BSD\n"
"\n"
"# ID of the trajectory\n"
"#    Meant to be unique for one set of trajectories\n"
"uint32 id\n"
"\n"
"# Probability of the trajectory\n"
"#    Range: [0, 1]\n"
"#    To be set only if a set of trajectories is given\n"
"float32 probability\n"
"\n"
"# Array of motion states with time that describe the trajectory\n"
"#    Sorted ascending by time\n"
"MotionState[] motion_states\n"
"\n"
"# Array of polygons to describe the set-based position uncertainty\n"
"#    Array indices matching the MotionState[]; z=0 for each polygon point\n"
"#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html\n"
"geometry_msgs/Polygon[] set_based_position_uncertainty\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"================================================================================\n"
"MSG: shape_msgs/Mesh\n"
"# Definition of a mesh\n"
"\n"
"# list of triangles; the index values refer to positions in vertices[]\n"
"MeshTriangle[] triangles\n"
"\n"
"# the actual vertices that make up the mesh\n"
"geometry_msgs/Point[] vertices\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/MeshTriangle\n"
"# Definition of a triangle's vertices\n"
"uint32[3] vertex_indices\n"
;
  }

  static const char* value(const ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.communication_header);
      stream.next(m.object_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BasicSafetyMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::automated_driving_msgs::BasicSafetyMessage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "communication_header: ";
    s << std::endl;
    Printer< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >::stream(s, indent + "  ", v.communication_header);
    s << indent << "object_state: ";
    s << std::endl;
    Printer< ::automated_driving_msgs::ObjectState_<ContainerAllocator> >::stream(s, indent + "  ", v.object_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOMATED_DRIVING_MSGS_MESSAGE_BASICSAFETYMESSAGE_H