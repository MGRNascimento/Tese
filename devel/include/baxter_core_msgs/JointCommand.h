// Generated by gencpp from file baxter_core_msgs/JointCommand.msg
// DO NOT EDIT!


#ifndef BAXTER_CORE_MSGS_MESSAGE_JOINTCOMMAND_H
#define BAXTER_CORE_MSGS_MESSAGE_JOINTCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace baxter_core_msgs
{
template <class ContainerAllocator>
struct JointCommand_
{
  typedef JointCommand_<ContainerAllocator> Type;

  JointCommand_()
    : mode(0)
    , command()
    , names()  {
    }
  JointCommand_(const ContainerAllocator& _alloc)
    : mode(0)
    , command(_alloc)
    , names(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _mode_type;
  _mode_type mode;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _command_type;
  _command_type command;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _names_type;
  _names_type names;



  enum {
    POSITION_MODE = 1,
    VELOCITY_MODE = 2,
    TORQUE_MODE = 3,
    RAW_POSITION_MODE = 4,
  };


  typedef boost::shared_ptr< ::baxter_core_msgs::JointCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_core_msgs::JointCommand_<ContainerAllocator> const> ConstPtr;

}; // struct JointCommand_

typedef ::baxter_core_msgs::JointCommand_<std::allocator<void> > JointCommand;

typedef boost::shared_ptr< ::baxter_core_msgs::JointCommand > JointCommandPtr;
typedef boost::shared_ptr< ::baxter_core_msgs::JointCommand const> JointCommandConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_core_msgs::JointCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace baxter_core_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'baxter_core_msgs': ['/home/miguel/catkin_ws/src/baxter_common/baxter_core_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::JointCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::JointCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::JointCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "19bfec8434dd568ab3c633d187c36f2e";
  }

  static const char* value(const ::baxter_core_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x19bfec8434dd568aULL;
  static const uint64_t static_value2 = 0xb3c633d187c36f2eULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_core_msgs/JointCommand";
  }

  static const char* value(const ::baxter_core_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 mode\n\
float64[] command\n\
string[]  names\n\
\n\
int32 POSITION_MODE=1\n\
int32 VELOCITY_MODE=2\n\
int32 TORQUE_MODE=3\n\
int32 RAW_POSITION_MODE=4\n\
";
  }

  static const char* value(const ::baxter_core_msgs::JointCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.command);
      stream.next(m.names);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_core_msgs::JointCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_core_msgs::JointCommand_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "command[]" << std::endl;
    for (size_t i = 0; i < v.command.size(); ++i)
    {
      s << indent << "  command[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.command[i]);
    }
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.names[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_JOINTCOMMAND_H
