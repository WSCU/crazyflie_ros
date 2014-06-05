/* Auto-generated by genmsg_cpp for file /home/robotics/ros_ws/crazyflie/msg/StabData.msg */
#ifndef CRAZYFLIE_MESSAGE_STABDATA_H
#define CRAZYFLIE_MESSAGE_STABDATA_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"

namespace crazyflie
{
template <class ContainerAllocator>
struct StabData_ {
  typedef StabData_<ContainerAllocator> Type;

  StabData_()
  : header()
  , thrust(0)
  , yaw(0.0)
  , pitch(0.0)
  , roll(0.0)
  {
  }

  StabData_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , thrust(0)
  , yaw(0.0)
  , pitch(0.0)
  , roll(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef uint16_t _thrust_type;
  uint16_t thrust;

  typedef float _yaw_type;
  float yaw;

  typedef float _pitch_type;
  float pitch;

  typedef float _roll_type;
  float roll;


  typedef boost::shared_ptr< ::crazyflie::StabData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie::StabData_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct StabData
typedef  ::crazyflie::StabData_<std::allocator<void> > StabData;

typedef boost::shared_ptr< ::crazyflie::StabData> StabDataPtr;
typedef boost::shared_ptr< ::crazyflie::StabData const> StabDataConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::crazyflie::StabData_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::crazyflie::StabData_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace crazyflie

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::crazyflie::StabData_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::crazyflie::StabData_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::crazyflie::StabData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ee0d4d9a67a435a0cb48e7a79dd62464";
  }

  static const char* value(const  ::crazyflie::StabData_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xee0d4d9a67a435a0ULL;
  static const uint64_t static_value2 = 0xcb48e7a79dd62464ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie::StabData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "crazyflie/StabData";
  }

  static const char* value(const  ::crazyflie::StabData_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::crazyflie::StabData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
uint16 thrust\n\
float32 yaw\n\
float32 pitch\n\
float32 roll\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
";
  }

  static const char* value(const  ::crazyflie::StabData_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::crazyflie::StabData_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::crazyflie::StabData_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::crazyflie::StabData_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.thrust);
    stream.next(m.yaw);
    stream.next(m.pitch);
    stream.next(m.roll);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct StabData_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie::StabData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::crazyflie::StabData_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "thrust: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.thrust);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<float>::stream(s, indent + "  ", v.roll);
  }
};


} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MESSAGE_STABDATA_H

