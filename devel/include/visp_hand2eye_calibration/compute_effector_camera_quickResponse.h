// Generated by gencpp from file visp_hand2eye_calibration/compute_effector_camera_quickResponse.msg
// DO NOT EDIT!


#ifndef VISP_HAND2EYE_CALIBRATION_MESSAGE_COMPUTE_EFFECTOR_CAMERA_QUICKRESPONSE_H
#define VISP_HAND2EYE_CALIBRATION_MESSAGE_COMPUTE_EFFECTOR_CAMERA_QUICKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Transform.h>

namespace visp_hand2eye_calibration
{
template <class ContainerAllocator>
struct compute_effector_camera_quickResponse_
{
  typedef compute_effector_camera_quickResponse_<ContainerAllocator> Type;

  compute_effector_camera_quickResponse_()
    : effector_camera()  {
    }
  compute_effector_camera_quickResponse_(const ContainerAllocator& _alloc)
    : effector_camera(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _effector_camera_type;
  _effector_camera_type effector_camera;





  typedef boost::shared_ptr< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> const> ConstPtr;

}; // struct compute_effector_camera_quickResponse_

typedef ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<std::allocator<void> > compute_effector_camera_quickResponse;

typedef boost::shared_ptr< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse > compute_effector_camera_quickResponsePtr;
typedef boost::shared_ptr< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse const> compute_effector_camera_quickResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace visp_hand2eye_calibration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'visp_hand2eye_calibration': ['/home/miguel/catkin_ws/src/vision_visp/visp_hand2eye_calibration/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e28a9ea34e6e135a6309cbdf6fb0ad0d";
  }

  static const char* value(const ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe28a9ea34e6e135aULL;
  static const uint64_t static_value2 = 0x6309cbdf6fb0ad0dULL;
};

template<class ContainerAllocator>
struct DataType< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "visp_hand2eye_calibration/compute_effector_camera_quickResponse";
  }

  static const char* value(const ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Transform effector_camera\n\
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

  static const char* value(const ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.effector_camera);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct compute_effector_camera_quickResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::visp_hand2eye_calibration::compute_effector_camera_quickResponse_<ContainerAllocator>& v)
  {
    s << indent << "effector_camera: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.effector_camera);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISP_HAND2EYE_CALIBRATION_MESSAGE_COMPUTE_EFFECTOR_CAMERA_QUICKRESPONSE_H
