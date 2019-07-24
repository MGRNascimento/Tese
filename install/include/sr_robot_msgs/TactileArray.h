// Generated by gencpp from file sr_robot_msgs/TactileArray.msg
// DO NOT EDIT!


#ifndef SR_ROBOT_MSGS_MESSAGE_TACTILEARRAY_H
#define SR_ROBOT_MSGS_MESSAGE_TACTILEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sr_robot_msgs/Tactile.h>

namespace sr_robot_msgs
{
template <class ContainerAllocator>
struct TactileArray_
{
  typedef TactileArray_<ContainerAllocator> Type;

  TactileArray_()
    : header()
    , data()  {
    }
  TactileArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::sr_robot_msgs::Tactile_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::sr_robot_msgs::Tactile_<ContainerAllocator> >::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::sr_robot_msgs::TactileArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sr_robot_msgs::TactileArray_<ContainerAllocator> const> ConstPtr;

}; // struct TactileArray_

typedef ::sr_robot_msgs::TactileArray_<std::allocator<void> > TactileArray;

typedef boost::shared_ptr< ::sr_robot_msgs::TactileArray > TactileArrayPtr;
typedef boost::shared_ptr< ::sr_robot_msgs::TactileArray const> TactileArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sr_robot_msgs::TactileArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sr_robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sr_robot_msgs': ['/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg', '/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sr_robot_msgs::TactileArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sr_robot_msgs::TactileArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sr_robot_msgs::TactileArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "294a763b90cb1a333d263f2097d3254e";
  }

  static const char* value(const ::sr_robot_msgs::TactileArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x294a763b90cb1a33ULL;
  static const uint64_t static_value2 = 0x3d263f2097d3254eULL;
};

template<class ContainerAllocator>
struct DataType< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sr_robot_msgs/TactileArray";
  }

  static const char* value(const ::sr_robot_msgs::TactileArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Tactile[] data\n\
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
MSG: sr_robot_msgs/Tactile\n\
std_msgs/Int16[] data\n\
\n\
================================================================================\n\
MSG: std_msgs/Int16\n\
int16 data\n\
";
  }

  static const char* value(const ::sr_robot_msgs::TactileArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TactileArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sr_robot_msgs::TactileArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sr_robot_msgs::TactileArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sr_robot_msgs::Tactile_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SR_ROBOT_MSGS_MESSAGE_TACTILEARRAY_H
