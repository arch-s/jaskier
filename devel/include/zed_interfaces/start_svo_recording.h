// Generated by gencpp from file zed_interfaces/start_svo_recording.msg
// DO NOT EDIT!


#ifndef ZED_INTERFACES_MESSAGE_START_SVO_RECORDING_H
#define ZED_INTERFACES_MESSAGE_START_SVO_RECORDING_H

#include <ros/service_traits.h>


#include <zed_interfaces/start_svo_recordingRequest.h>
#include <zed_interfaces/start_svo_recordingResponse.h>


namespace zed_interfaces
{

struct start_svo_recording
{

typedef start_svo_recordingRequest Request;
typedef start_svo_recordingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct start_svo_recording
} // namespace zed_interfaces


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::zed_interfaces::start_svo_recording > {
  static const char* value()
  {
    return "a0f71014040ca234c6276bc9c76368c6";
  }

  static const char* value(const ::zed_interfaces::start_svo_recording&) { return value(); }
};

template<>
struct DataType< ::zed_interfaces::start_svo_recording > {
  static const char* value()
  {
    return "zed_interfaces/start_svo_recording";
  }

  static const char* value(const ::zed_interfaces::start_svo_recording&) { return value(); }
};


// service_traits::MD5Sum< ::zed_interfaces::start_svo_recordingRequest> should match
// service_traits::MD5Sum< ::zed_interfaces::start_svo_recording >
template<>
struct MD5Sum< ::zed_interfaces::start_svo_recordingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::zed_interfaces::start_svo_recording >::value();
  }
  static const char* value(const ::zed_interfaces::start_svo_recordingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::zed_interfaces::start_svo_recordingRequest> should match
// service_traits::DataType< ::zed_interfaces::start_svo_recording >
template<>
struct DataType< ::zed_interfaces::start_svo_recordingRequest>
{
  static const char* value()
  {
    return DataType< ::zed_interfaces::start_svo_recording >::value();
  }
  static const char* value(const ::zed_interfaces::start_svo_recordingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::zed_interfaces::start_svo_recordingResponse> should match
// service_traits::MD5Sum< ::zed_interfaces::start_svo_recording >
template<>
struct MD5Sum< ::zed_interfaces::start_svo_recordingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::zed_interfaces::start_svo_recording >::value();
  }
  static const char* value(const ::zed_interfaces::start_svo_recordingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::zed_interfaces::start_svo_recordingResponse> should match
// service_traits::DataType< ::zed_interfaces::start_svo_recording >
template<>
struct DataType< ::zed_interfaces::start_svo_recordingResponse>
{
  static const char* value()
  {
    return DataType< ::zed_interfaces::start_svo_recording >::value();
  }
  static const char* value(const ::zed_interfaces::start_svo_recordingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ZED_INTERFACES_MESSAGE_START_SVO_RECORDING_H
