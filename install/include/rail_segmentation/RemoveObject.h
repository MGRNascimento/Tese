// Generated by gencpp from file rail_segmentation/RemoveObject.msg
// DO NOT EDIT!


#ifndef RAIL_SEGMENTATION_MESSAGE_REMOVEOBJECT_H
#define RAIL_SEGMENTATION_MESSAGE_REMOVEOBJECT_H

#include <ros/service_traits.h>


#include <rail_segmentation/RemoveObjectRequest.h>
#include <rail_segmentation/RemoveObjectResponse.h>


namespace rail_segmentation
{

struct RemoveObject
{

typedef RemoveObjectRequest Request;
typedef RemoveObjectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RemoveObject
} // namespace rail_segmentation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rail_segmentation::RemoveObject > {
  static const char* value()
  {
    return "ad7b979103dbd563a352ef5270716728";
  }

  static const char* value(const ::rail_segmentation::RemoveObject&) { return value(); }
};

template<>
struct DataType< ::rail_segmentation::RemoveObject > {
  static const char* value()
  {
    return "rail_segmentation/RemoveObject";
  }

  static const char* value(const ::rail_segmentation::RemoveObject&) { return value(); }
};


// service_traits::MD5Sum< ::rail_segmentation::RemoveObjectRequest> should match 
// service_traits::MD5Sum< ::rail_segmentation::RemoveObject > 
template<>
struct MD5Sum< ::rail_segmentation::RemoveObjectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rail_segmentation::RemoveObject >::value();
  }
  static const char* value(const ::rail_segmentation::RemoveObjectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rail_segmentation::RemoveObjectRequest> should match 
// service_traits::DataType< ::rail_segmentation::RemoveObject > 
template<>
struct DataType< ::rail_segmentation::RemoveObjectRequest>
{
  static const char* value()
  {
    return DataType< ::rail_segmentation::RemoveObject >::value();
  }
  static const char* value(const ::rail_segmentation::RemoveObjectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rail_segmentation::RemoveObjectResponse> should match 
// service_traits::MD5Sum< ::rail_segmentation::RemoveObject > 
template<>
struct MD5Sum< ::rail_segmentation::RemoveObjectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rail_segmentation::RemoveObject >::value();
  }
  static const char* value(const ::rail_segmentation::RemoveObjectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rail_segmentation::RemoveObjectResponse> should match 
// service_traits::DataType< ::rail_segmentation::RemoveObject > 
template<>
struct DataType< ::rail_segmentation::RemoveObjectResponse>
{
  static const char* value()
  {
    return DataType< ::rail_segmentation::RemoveObject >::value();
  }
  static const char* value(const ::rail_segmentation::RemoveObjectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RAIL_SEGMENTATION_MESSAGE_REMOVEOBJECT_H