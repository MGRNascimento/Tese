// Generated by gencpp from file sr_robot_msgs/ChangeControlType.msg
// DO NOT EDIT!


#ifndef SR_ROBOT_MSGS_MESSAGE_CHANGECONTROLTYPE_H
#define SR_ROBOT_MSGS_MESSAGE_CHANGECONTROLTYPE_H

#include <ros/service_traits.h>


#include <sr_robot_msgs/ChangeControlTypeRequest.h>
#include <sr_robot_msgs/ChangeControlTypeResponse.h>


namespace sr_robot_msgs
{

struct ChangeControlType
{

typedef ChangeControlTypeRequest Request;
typedef ChangeControlTypeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeControlType
} // namespace sr_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sr_robot_msgs::ChangeControlType > {
  static const char* value()
  {
    return "14cedf5030b722e2c8df2dc57f9cdb58";
  }

  static const char* value(const ::sr_robot_msgs::ChangeControlType&) { return value(); }
};

template<>
struct DataType< ::sr_robot_msgs::ChangeControlType > {
  static const char* value()
  {
    return "sr_robot_msgs/ChangeControlType";
  }

  static const char* value(const ::sr_robot_msgs::ChangeControlType&) { return value(); }
};


// service_traits::MD5Sum< ::sr_robot_msgs::ChangeControlTypeRequest> should match 
// service_traits::MD5Sum< ::sr_robot_msgs::ChangeControlType > 
template<>
struct MD5Sum< ::sr_robot_msgs::ChangeControlTypeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sr_robot_msgs::ChangeControlType >::value();
  }
  static const char* value(const ::sr_robot_msgs::ChangeControlTypeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sr_robot_msgs::ChangeControlTypeRequest> should match 
// service_traits::DataType< ::sr_robot_msgs::ChangeControlType > 
template<>
struct DataType< ::sr_robot_msgs::ChangeControlTypeRequest>
{
  static const char* value()
  {
    return DataType< ::sr_robot_msgs::ChangeControlType >::value();
  }
  static const char* value(const ::sr_robot_msgs::ChangeControlTypeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sr_robot_msgs::ChangeControlTypeResponse> should match 
// service_traits::MD5Sum< ::sr_robot_msgs::ChangeControlType > 
template<>
struct MD5Sum< ::sr_robot_msgs::ChangeControlTypeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sr_robot_msgs::ChangeControlType >::value();
  }
  static const char* value(const ::sr_robot_msgs::ChangeControlTypeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sr_robot_msgs::ChangeControlTypeResponse> should match 
// service_traits::DataType< ::sr_robot_msgs::ChangeControlType > 
template<>
struct DataType< ::sr_robot_msgs::ChangeControlTypeResponse>
{
  static const char* value()
  {
    return DataType< ::sr_robot_msgs::ChangeControlType >::value();
  }
  static const char* value(const ::sr_robot_msgs::ChangeControlTypeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SR_ROBOT_MSGS_MESSAGE_CHANGECONTROLTYPE_H