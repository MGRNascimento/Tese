// Generated by gencpp from file vizzy_msgs/CartesianFeedback.msg
// DO NOT EDIT!


#ifndef VIZZY_MSGS_MESSAGE_CARTESIANFEEDBACK_H
#define VIZZY_MSGS_MESSAGE_CARTESIANFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace vizzy_msgs
{
template <class ContainerAllocator>
struct CartesianFeedback_
{
  typedef CartesianFeedback_<ContainerAllocator> Type;

  CartesianFeedback_()
    : current_e_eff_pose()  {
    }
  CartesianFeedback_(const ContainerAllocator& _alloc)
    : current_e_eff_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _current_e_eff_pose_type;
  _current_e_eff_pose_type current_e_eff_pose;





  typedef boost::shared_ptr< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CartesianFeedback_

typedef ::vizzy_msgs::CartesianFeedback_<std::allocator<void> > CartesianFeedback;

typedef boost::shared_ptr< ::vizzy_msgs::CartesianFeedback > CartesianFeedbackPtr;
typedef boost::shared_ptr< ::vizzy_msgs::CartesianFeedback const> CartesianFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a559431a983ef774411750928f6599f4";
  }

  static const char* value(const ::vizzy_msgs::CartesianFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa559431a983ef774ULL;
  static const uint64_t static_value2 = 0x411750928f6599f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vizzy_msgs/CartesianFeedback";
  }

  static const char* value(const ::vizzy_msgs::CartesianFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
geometry_msgs/PoseStamped current_e_eff_pose\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::vizzy_msgs::CartesianFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_e_eff_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CartesianFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vizzy_msgs::CartesianFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vizzy_msgs::CartesianFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_e_eff_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.current_e_eff_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VIZZY_MSGS_MESSAGE_CARTESIANFEEDBACK_H
