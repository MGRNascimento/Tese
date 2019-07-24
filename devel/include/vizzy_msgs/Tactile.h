// Generated by gencpp from file vizzy_msgs/Tactile.msg
// DO NOT EDIT!


#ifndef VIZZY_MSGS_MESSAGE_TACTILE_H
#define VIZZY_MSGS_MESSAGE_TACTILE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vizzy_msgs/TacVector.h>

namespace vizzy_msgs
{
template <class ContainerAllocator>
struct Tactile_
{
  typedef Tactile_<ContainerAllocator> Type;

  Tactile_()
    : header()
    , sensorsArray()  {
    }
  Tactile_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sensorsArray()  {
  (void)_alloc;
      sensorsArray.assign( ::vizzy_msgs::TacVector_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array< ::vizzy_msgs::TacVector_<ContainerAllocator> , 16>  _sensorsArray_type;
  _sensorsArray_type sensorsArray;





  typedef boost::shared_ptr< ::vizzy_msgs::Tactile_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vizzy_msgs::Tactile_<ContainerAllocator> const> ConstPtr;

}; // struct Tactile_

typedef ::vizzy_msgs::Tactile_<std::allocator<void> > Tactile;

typedef boost::shared_ptr< ::vizzy_msgs::Tactile > TactilePtr;
typedef boost::shared_ptr< ::vizzy_msgs::Tactile const> TactileConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vizzy_msgs::Tactile_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vizzy_msgs::Tactile_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vizzy_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'vizzy_msgs': ['/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg', '/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vizzy_msgs::Tactile_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vizzy_msgs::Tactile_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::Tactile_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::Tactile_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::Tactile_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::Tactile_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vizzy_msgs::Tactile_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6f495229c1ca17ef38013481c00069b";
  }

  static const char* value(const ::vizzy_msgs::Tactile_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6f495229c1ca17eULL;
  static const uint64_t static_value2 = 0xf38013481c00069bULL;
};

template<class ContainerAllocator>
struct DataType< ::vizzy_msgs::Tactile_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vizzy_msgs/Tactile";
  }

  static const char* value(const ::vizzy_msgs::Tactile_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vizzy_msgs::Tactile_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
TacVector[16] sensorsArray\n\
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
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: vizzy_msgs/TacVector\n\
int16 x\n\
int16 y\n\
int16 z\n\
";
  }

  static const char* value(const ::vizzy_msgs::Tactile_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vizzy_msgs::Tactile_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sensorsArray);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Tactile_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vizzy_msgs::Tactile_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vizzy_msgs::Tactile_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sensorsArray[]" << std::endl;
    for (size_t i = 0; i < v.sensorsArray.size(); ++i)
    {
      s << indent << "  sensorsArray[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::vizzy_msgs::TacVector_<ContainerAllocator> >::stream(s, indent + "    ", v.sensorsArray[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VIZZY_MSGS_MESSAGE_TACTILE_H
