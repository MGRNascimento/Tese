// Generated by gencpp from file visp_hand2eye_calibration/TransformArray.msg
// DO NOT EDIT!


#ifndef VISP_HAND2EYE_CALIBRATION_MESSAGE_TRANSFORMARRAY_H
#define VISP_HAND2EYE_CALIBRATION_MESSAGE_TRANSFORMARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Transform.h>

namespace visp_hand2eye_calibration
{
template <class ContainerAllocator>
struct TransformArray_
{
  typedef TransformArray_<ContainerAllocator> Type;

  TransformArray_()
    : header()
    , transforms()  {
    }
  TransformArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , transforms(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Transform_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Transform_<ContainerAllocator> >::other >  _transforms_type;
  _transforms_type transforms;





  typedef boost::shared_ptr< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> const> ConstPtr;

}; // struct TransformArray_

typedef ::visp_hand2eye_calibration::TransformArray_<std::allocator<void> > TransformArray;

typedef boost::shared_ptr< ::visp_hand2eye_calibration::TransformArray > TransformArrayPtr;
typedef boost::shared_ptr< ::visp_hand2eye_calibration::TransformArray const> TransformArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace visp_hand2eye_calibration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'visp_hand2eye_calibration': ['/home/miguel/catkin_ws/src/vision_visp/visp_hand2eye_calibration/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69339633e969be70367b6ff0fe206328";
  }

  static const char* value(const ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69339633e969be70ULL;
  static const uint64_t static_value2 = 0x367b6ff0fe206328ULL;
};

template<class ContainerAllocator>
struct DataType< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "visp_hand2eye_calibration/TransformArray";
  }

  static const char* value(const ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# An array of transforms with a header for global reference.\n\
\n\
Header header\n\
\n\
geometry_msgs/Transform[] transforms\n\
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
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
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

  static const char* value(const ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.transforms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::visp_hand2eye_calibration::TransformArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "transforms[]" << std::endl;
    for (size_t i = 0; i < v.transforms.size(); ++i)
    {
      s << indent << "  transforms[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "    ", v.transforms[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISP_HAND2EYE_CALIBRATION_MESSAGE_TRANSFORMARRAY_H