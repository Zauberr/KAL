// Generated by gencpp from file automated_driving_msgs/StampedFloat64.msg
// DO NOT EDIT!


#ifndef AUTOMATED_DRIVING_MSGS_MESSAGE_STAMPEDFLOAT64_H
#define AUTOMATED_DRIVING_MSGS_MESSAGE_STAMPEDFLOAT64_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace automated_driving_msgs
{
template <class ContainerAllocator>
struct StampedFloat64_
{
  typedef StampedFloat64_<ContainerAllocator> Type;

  StampedFloat64_()
    : header()
    , data(0.0)  {
    }
  StampedFloat64_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> const> ConstPtr;

}; // struct StampedFloat64_

typedef ::automated_driving_msgs::StampedFloat64_<std::allocator<void> > StampedFloat64;

typedef boost::shared_ptr< ::automated_driving_msgs::StampedFloat64 > StampedFloat64Ptr;
typedef boost::shared_ptr< ::automated_driving_msgs::StampedFloat64 const> StampedFloat64ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6c99c37e6f9fe98e071d524cc164e65";
  }

  static const char* value(const ::automated_driving_msgs::StampedFloat64_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6c99c37e6f9fe98ULL;
  static const uint64_t static_value2 = 0xe071d524cc164e65ULL;
};

template<class ContainerAllocator>
struct DataType< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "automated_driving_msgs/StampedFloat64";
  }

  static const char* value(const ::automated_driving_msgs::StampedFloat64_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message for a stamped float64\n"
"# License: BSD\n"
"\n"
"Header header\n"
"\n"
"float64 data\n"
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
;
  }

  static const char* value(const ::automated_driving_msgs::StampedFloat64_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StampedFloat64_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::automated_driving_msgs::StampedFloat64_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::automated_driving_msgs::StampedFloat64_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data: ";
    Printer<double>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOMATED_DRIVING_MSGS_MESSAGE_STAMPEDFLOAT64_H