// Generated by gencpp from file vizzy_msgs/GazeFeedback.msg
// DO NOT EDIT!


#ifndef VIZZY_MSGS_MESSAGE_GAZEFEEDBACK_H
#define VIZZY_MSGS_MESSAGE_GAZEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>
#include <sensor_msgs/JointState.h>

namespace vizzy_msgs
{
template <class ContainerAllocator>
struct GazeFeedback_
{
  typedef GazeFeedback_<ContainerAllocator> Type;

  GazeFeedback_()
    : state_reached(false)
    , fixation_point()
    , fixation_point_error(0.0)
    , velocity_error(0.0)
    , joint_states()  {
    }
  GazeFeedback_(const ContainerAllocator& _alloc)
    : state_reached(false)
    , fixation_point(_alloc)
    , fixation_point_error(0.0)
    , velocity_error(0.0)
    , joint_states(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _state_reached_type;
  _state_reached_type state_reached;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _fixation_point_type;
  _fixation_point_type fixation_point;

   typedef double _fixation_point_error_type;
  _fixation_point_error_type fixation_point_error;

   typedef double _velocity_error_type;
  _velocity_error_type velocity_error;

   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _joint_states_type;
  _joint_states_type joint_states;





  typedef boost::shared_ptr< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct GazeFeedback_

typedef ::vizzy_msgs::GazeFeedback_<std::allocator<void> > GazeFeedback;

typedef boost::shared_ptr< ::vizzy_msgs::GazeFeedback > GazeFeedbackPtr;
typedef boost::shared_ptr< ::vizzy_msgs::GazeFeedback const> GazeFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vizzy_msgs::GazeFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vizzy_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'vizzy_msgs': ['/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg', '/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c925c4396ef8f121f68659b242138ea2";
  }

  static const char* value(const ::vizzy_msgs::GazeFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc925c4396ef8f121ULL;
  static const uint64_t static_value2 = 0xf68659b242138ea2ULL;
};

template<class ContainerAllocator>
struct DataType< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vizzy_msgs/GazeFeedback";
  }

  static const char* value(const ::vizzy_msgs::GazeFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
bool state_reached\n\
geometry_msgs/PointStamped fixation_point\n\
float64 fixation_point_error\n\
float64 velocity_error\n\
sensor_msgs/JointState joint_states\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: sensor_msgs/JointState\n\
# This is a message that holds data to describe the state of a set of torque controlled joints. \n\
#\n\
# The state of each joint (revolute or prismatic) is defined by:\n\
#  * the position of the joint (rad or m),\n\
#  * the velocity of the joint (rad/s or m/s) and \n\
#  * the effort that is applied in the joint (Nm or N).\n\
#\n\
# Each joint is uniquely identified by its name\n\
# The header specifies the time at which the joint states were recorded. All the joint states\n\
# in one message have to be recorded at the same time.\n\
#\n\
# This message consists of a multiple arrays, one for each part of the joint state. \n\
# The goal is to make each of the fields optional. When e.g. your joints have no\n\
# effort associated with them, you can leave the effort array empty. \n\
#\n\
# All arrays in this message should have the same size, or be empty.\n\
# This is the only way to uniquely associate the joint name with the correct\n\
# states.\n\
\n\
\n\
Header header\n\
\n\
string[] name\n\
float64[] position\n\
float64[] velocity\n\
float64[] effort\n\
";
  }

  static const char* value(const ::vizzy_msgs::GazeFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state_reached);
      stream.next(m.fixation_point);
      stream.next(m.fixation_point_error);
      stream.next(m.velocity_error);
      stream.next(m.joint_states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GazeFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vizzy_msgs::GazeFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vizzy_msgs::GazeFeedback_<ContainerAllocator>& v)
  {
    s << indent << "state_reached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state_reached);
    s << indent << "fixation_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.fixation_point);
    s << indent << "fixation_point_error: ";
    Printer<double>::stream(s, indent + "  ", v.fixation_point_error);
    s << indent << "velocity_error: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_error);
    s << indent << "joint_states: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.joint_states);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VIZZY_MSGS_MESSAGE_GAZEFEEDBACK_H
