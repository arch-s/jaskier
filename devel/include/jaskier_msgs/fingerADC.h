// Generated by gencpp from file jaskier_msgs/fingerADC.msg
// DO NOT EDIT!


#ifndef JASKIER_MSGS_MESSAGE_FINGERADC_H
#define JASKIER_MSGS_MESSAGE_FINGERADC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jaskier_msgs
{
template <class ContainerAllocator>
struct fingerADC_
{
  typedef fingerADC_<ContainerAllocator> Type;

  fingerADC_()
    : adcVals()
    , adcMin(0)
    , adcMax(0)  {
      adcVals.assign(0);
  }
  fingerADC_(const ContainerAllocator& _alloc)
    : adcVals()
    , adcMin(0)
    , adcMax(0)  {
  (void)_alloc;
      adcVals.assign(0);
  }



   typedef boost::array<int32_t, 5>  _adcVals_type;
  _adcVals_type adcVals;

   typedef int32_t _adcMin_type;
  _adcMin_type adcMin;

   typedef int32_t _adcMax_type;
  _adcMax_type adcMax;





  typedef boost::shared_ptr< ::jaskier_msgs::fingerADC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jaskier_msgs::fingerADC_<ContainerAllocator> const> ConstPtr;

}; // struct fingerADC_

typedef ::jaskier_msgs::fingerADC_<std::allocator<void> > fingerADC;

typedef boost::shared_ptr< ::jaskier_msgs::fingerADC > fingerADCPtr;
typedef boost::shared_ptr< ::jaskier_msgs::fingerADC const> fingerADCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jaskier_msgs::fingerADC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jaskier_msgs::fingerADC_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jaskier_msgs::fingerADC_<ContainerAllocator1> & lhs, const ::jaskier_msgs::fingerADC_<ContainerAllocator2> & rhs)
{
  return lhs.adcVals == rhs.adcVals &&
    lhs.adcMin == rhs.adcMin &&
    lhs.adcMax == rhs.adcMax;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jaskier_msgs::fingerADC_<ContainerAllocator1> & lhs, const ::jaskier_msgs::fingerADC_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jaskier_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaskier_msgs::fingerADC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaskier_msgs::fingerADC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaskier_msgs::fingerADC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "684db9cd25303adefa48e14d9ffba24a";
  }

  static const char* value(const ::jaskier_msgs::fingerADC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x684db9cd25303adeULL;
  static const uint64_t static_value2 = 0xfa48e14d9ffba24aULL;
};

template<class ContainerAllocator>
struct DataType< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jaskier_msgs/fingerADC";
  }

  static const char* value(const ::jaskier_msgs::fingerADC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ADC values for each finger joint, and the min and max of seen adc vals\n"
"\n"
"# The order is thumb, index, middle, ring, little\n"
"int32[5] adcVals\n"
"int32 adcMin\n"
"int32 adcMax\n"
;
  }

  static const char* value(const ::jaskier_msgs::fingerADC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.adcVals);
      stream.next(m.adcMin);
      stream.next(m.adcMax);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct fingerADC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jaskier_msgs::fingerADC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jaskier_msgs::fingerADC_<ContainerAllocator>& v)
  {
    s << indent << "adcVals[]" << std::endl;
    for (size_t i = 0; i < v.adcVals.size(); ++i)
    {
      s << indent << "  adcVals[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.adcVals[i]);
    }
    s << indent << "adcMin: ";
    Printer<int32_t>::stream(s, indent + "  ", v.adcMin);
    s << indent << "adcMax: ";
    Printer<int32_t>::stream(s, indent + "  ", v.adcMax);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JASKIER_MSGS_MESSAGE_FINGERADC_H
