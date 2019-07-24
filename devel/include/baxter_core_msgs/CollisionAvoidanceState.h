// Generated by gencpp from file baxter_core_msgs/CollisionAvoidanceState.msg
// DO NOT EDIT!


#ifndef BAXTER_CORE_MSGS_MESSAGE_COLLISIONAVOIDANCESTATE_H
#define BAXTER_CORE_MSGS_MESSAGE_COLLISIONAVOIDANCESTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace baxter_core_msgs
{
template <class ContainerAllocator>
struct CollisionAvoidanceState_
{
  typedef CollisionAvoidanceState_<ContainerAllocator> Type;

  CollisionAvoidanceState_()
    : header()
    , other_arm(false)
    , collision_object()  {
    }
  CollisionAvoidanceState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , other_arm(false)
    , collision_object(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _other_arm_type;
  _other_arm_type other_arm;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _collision_object_type;
  _collision_object_type collision_object;





  typedef boost::shared_ptr< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> const> ConstPtr;

}; // struct CollisionAvoidanceState_

typedef ::baxter_core_msgs::CollisionAvoidanceState_<std::allocator<void> > CollisionAvoidanceState;

typedef boost::shared_ptr< ::baxter_core_msgs::CollisionAvoidanceState > CollisionAvoidanceStatePtr;
typedef boost::shared_ptr< ::baxter_core_msgs::CollisionAvoidanceState const> CollisionAvoidanceStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace baxter_core_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'baxter_core_msgs': ['/home/miguel/catkin_ws/src/baxter_common/baxter_core_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30f5cb8ae019f1ffe8b599e6d2e589c7";
  }

  static const char* value(const ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30f5cb8ae019f1ffULL;
  static const uint64_t static_value2 = 0xe8b599e6d2e589c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_core_msgs/CollisionAvoidanceState";
  }

  static const char* value(const ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
bool other_arm\n\
string[] collision_object\n\
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
";
  }

  static const char* value(const ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.other_arm);
      stream.next(m.collision_object);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CollisionAvoidanceState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_core_msgs::CollisionAvoidanceState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "other_arm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.other_arm);
    s << indent << "collision_object[]" << std::endl;
    for (size_t i = 0; i < v.collision_object.size(); ++i)
    {
      s << indent << "  collision_object[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.collision_object[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_COLLISIONAVOIDANCESTATE_H
