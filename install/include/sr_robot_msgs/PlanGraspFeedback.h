// Generated by gencpp from file sr_robot_msgs/PlanGraspFeedback.msg
// DO NOT EDIT!


#ifndef SR_ROBOT_MSGS_MESSAGE_PLANGRASPFEEDBACK_H
#define SR_ROBOT_MSGS_MESSAGE_PLANGRASPFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sr_robot_msgs
{
template <class ContainerAllocator>
struct PlanGraspFeedback_
{
  typedef PlanGraspFeedback_<ContainerAllocator> Type;

  PlanGraspFeedback_()
    : number_of_synthesized_grasps(0)  {
    }
  PlanGraspFeedback_(const ContainerAllocator& _alloc)
    : number_of_synthesized_grasps(0)  {
  (void)_alloc;
    }



   typedef int32_t _number_of_synthesized_grasps_type;
  _number_of_synthesized_grasps_type number_of_synthesized_grasps;





  typedef boost::shared_ptr< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct PlanGraspFeedback_

typedef ::sr_robot_msgs::PlanGraspFeedback_<std::allocator<void> > PlanGraspFeedback;

typedef boost::shared_ptr< ::sr_robot_msgs::PlanGraspFeedback > PlanGraspFeedbackPtr;
typedef boost::shared_ptr< ::sr_robot_msgs::PlanGraspFeedback const> PlanGraspFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sr_robot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sr_robot_msgs': ['/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg', '/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b5e246a46b8ebdce203ce200fc43d02";
  }

  static const char* value(const ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b5e246a46b8ebdcULL;
  static const uint64_t static_value2 = 0xe203ce200fc43d02ULL;
};

template<class ContainerAllocator>
struct DataType< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sr_robot_msgs/PlanGraspFeedback";
  }

  static const char* value(const ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Feedback\n\
# Number of grasps synthesized so far.\n\
int32 number_of_synthesized_grasps\n\
\n\
";
  }

  static const char* value(const ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number_of_synthesized_grasps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanGraspFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sr_robot_msgs::PlanGraspFeedback_<ContainerAllocator>& v)
  {
    s << indent << "number_of_synthesized_grasps: ";
    Printer<int32_t>::stream(s, indent + "  ", v.number_of_synthesized_grasps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SR_ROBOT_MSGS_MESSAGE_PLANGRASPFEEDBACK_H
