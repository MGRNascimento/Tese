// Generated by gencpp from file visp_camera_calibration/CalibPoint.msg
// DO NOT EDIT!


#ifndef VISP_CAMERA_CALIBRATION_MESSAGE_CALIBPOINT_H
#define VISP_CAMERA_CALIBRATION_MESSAGE_CALIBPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace visp_camera_calibration
{
template <class ContainerAllocator>
struct CalibPoint_
{
  typedef CalibPoint_<ContainerAllocator> Type;

  CalibPoint_()
    : i(0)
    , j(0)
    , X(0.0)
    , Y(0.0)
    , Z(0.0)  {
    }
  CalibPoint_(const ContainerAllocator& _alloc)
    : i(0)
    , j(0)
    , X(0.0)
    , Y(0.0)
    , Z(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _i_type;
  _i_type i;

   typedef int32_t _j_type;
  _j_type j;

   typedef double _X_type;
  _X_type X;

   typedef double _Y_type;
  _Y_type Y;

   typedef double _Z_type;
  _Z_type Z;





  typedef boost::shared_ptr< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> const> ConstPtr;

}; // struct CalibPoint_

typedef ::visp_camera_calibration::CalibPoint_<std::allocator<void> > CalibPoint;

typedef boost::shared_ptr< ::visp_camera_calibration::CalibPoint > CalibPointPtr;
typedef boost::shared_ptr< ::visp_camera_calibration::CalibPoint const> CalibPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::visp_camera_calibration::CalibPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace visp_camera_calibration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'visp_camera_calibration': ['/home/miguel/catkin_ws/src/vision_visp/visp_camera_calibration/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b9d41ff2127a593c07cec2a11858ac5";
  }

  static const char* value(const ::visp_camera_calibration::CalibPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b9d41ff2127a593ULL;
  static const uint64_t static_value2 = 0xc07cec2a11858ac5ULL;
};

template<class ContainerAllocator>
struct DataType< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "visp_camera_calibration/CalibPoint";
  }

  static const char* value(const ::visp_camera_calibration::CalibPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# a vpPoint\n\
\n\
int32 i\n\
int32 j\n\
float64 X\n\
float64 Y\n\
float64 Z\n\
\n\
";
  }

  static const char* value(const ::visp_camera_calibration::CalibPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.i);
      stream.next(m.j);
      stream.next(m.X);
      stream.next(m.Y);
      stream.next(m.Z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalibPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::visp_camera_calibration::CalibPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::visp_camera_calibration::CalibPoint_<ContainerAllocator>& v)
  {
    s << indent << "i: ";
    Printer<int32_t>::stream(s, indent + "  ", v.i);
    s << indent << "j: ";
    Printer<int32_t>::stream(s, indent + "  ", v.j);
    s << indent << "X: ";
    Printer<double>::stream(s, indent + "  ", v.X);
    s << indent << "Y: ";
    Printer<double>::stream(s, indent + "  ", v.Y);
    s << indent << "Z: ";
    Printer<double>::stream(s, indent + "  ", v.Z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISP_CAMERA_CALIBRATION_MESSAGE_CALIBPOINT_H
