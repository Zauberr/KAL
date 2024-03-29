// Generated by gencpp from file automated_driving_msgs/AdditionalHeaderForCommunication.msg
// DO NOT EDIT!


#ifndef AUTOMATED_DRIVING_MSGS_MESSAGE_ADDITIONALHEADERFORCOMMUNICATION_H
#define AUTOMATED_DRIVING_MSGS_MESSAGE_ADDITIONALHEADERFORCOMMUNICATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseWithCovarianceStamped.h>

namespace automated_driving_msgs
{
template <class ContainerAllocator>
struct AdditionalHeaderForCommunication_
{
  typedef AdditionalHeaderForCommunication_<ContainerAllocator> Type;

  AdditionalHeaderForCommunication_()
    : sender_id(0)
    , sender_pose()  {
    }
  AdditionalHeaderForCommunication_(const ContainerAllocator& _alloc)
    : sender_id(0)
    , sender_pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _sender_id_type;
  _sender_id_type sender_id;

   typedef  ::geometry_msgs::PoseWithCovarianceStamped_<ContainerAllocator>  _sender_pose_type;
  _sender_pose_type sender_pose;





  typedef boost::shared_ptr< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> const> ConstPtr;

}; // struct AdditionalHeaderForCommunication_

typedef ::automated_driving_msgs::AdditionalHeaderForCommunication_<std::allocator<void> > AdditionalHeaderForCommunication;

typedef boost::shared_ptr< ::automated_driving_msgs::AdditionalHeaderForCommunication > AdditionalHeaderForCommunicationPtr;
typedef boost::shared_ptr< ::automated_driving_msgs::AdditionalHeaderForCommunication const> AdditionalHeaderForCommunicationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace automated_driving_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/mrtros/share/std_msgs/cmake/../msg'], 'automated_driving_msgs': ['/home/kal5-2/rammbo/src/automated_driving_msgs/msg'], 'shape_msgs': ['/opt/mrtros/share/shape_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/mrtros/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7ad8d6ff3241e85a418314f4bfc67b90";
  }

  static const char* value(const ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7ad8d6ff3241e85aULL;
  static const uint64_t static_value2 = 0x418314f4bfc67b90ULL;
};

template<class ContainerAllocator>
struct DataType< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "automated_driving_msgs/AdditionalHeaderForCommunication";
  }

  static const char* value(const ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Additional header for a communication message\n"
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
;
  }

  static const char* value(const ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sender_id);
      stream.next(m.sender_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AdditionalHeaderForCommunication_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::automated_driving_msgs::AdditionalHeaderForCommunication_<ContainerAllocator>& v)
  {
    s << indent << "sender_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sender_id);
    s << indent << "sender_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovarianceStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.sender_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOMATED_DRIVING_MSGS_MESSAGE_ADDITIONALHEADERFORCOMMUNICATION_H
