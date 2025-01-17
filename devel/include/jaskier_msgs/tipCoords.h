// Generated by gencpp from file jaskier_msgs/tipCoords.msg
// DO NOT EDIT!


#ifndef JASKIER_MSGS_MESSAGE_TIPCOORDS_H
#define JASKIER_MSGS_MESSAGE_TIPCOORDS_H


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
struct tipCoords_
{
  typedef tipCoords_<ContainerAllocator> Type;

  tipCoords_()
    : thumb()
    , index()
    , middle()
    , ring()
    , little()  {
      thumb.assign(0.0);

      index.assign(0.0);

      middle.assign(0.0);

      ring.assign(0.0);

      little.assign(0.0);
  }
  tipCoords_(const ContainerAllocator& _alloc)
    : thumb()
    , index()
    , middle()
    , ring()
    , little()  {
  (void)_alloc;
      thumb.assign(0.0);

      index.assign(0.0);

      middle.assign(0.0);

      ring.assign(0.0);

      little.assign(0.0);
  }



   typedef boost::array<double, 3>  _thumb_type;
  _thumb_type thumb;

   typedef boost::array<double, 3>  _index_type;
  _index_type index;

   typedef boost::array<double, 3>  _middle_type;
  _middle_type middle;

   typedef boost::array<double, 3>  _ring_type;
  _ring_type ring;

   typedef boost::array<double, 3>  _little_type;
  _little_type little;





  typedef boost::shared_ptr< ::jaskier_msgs::tipCoords_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jaskier_msgs::tipCoords_<ContainerAllocator> const> ConstPtr;

}; // struct tipCoords_

typedef ::jaskier_msgs::tipCoords_<std::allocator<void> > tipCoords;

typedef boost::shared_ptr< ::jaskier_msgs::tipCoords > tipCoordsPtr;
typedef boost::shared_ptr< ::jaskier_msgs::tipCoords const> tipCoordsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jaskier_msgs::tipCoords_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jaskier_msgs::tipCoords_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jaskier_msgs::tipCoords_<ContainerAllocator1> & lhs, const ::jaskier_msgs::tipCoords_<ContainerAllocator2> & rhs)
{
  return lhs.thumb == rhs.thumb &&
    lhs.index == rhs.index &&
    lhs.middle == rhs.middle &&
    lhs.ring == rhs.ring &&
    lhs.little == rhs.little;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jaskier_msgs::tipCoords_<ContainerAllocator1> & lhs, const ::jaskier_msgs::tipCoords_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jaskier_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaskier_msgs::tipCoords_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaskier_msgs::tipCoords_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaskier_msgs::tipCoords_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16c13f95c15ab83cb390e0132a0d1f39";
  }

  static const char* value(const ::jaskier_msgs::tipCoords_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16c13f95c15ab83cULL;
  static const uint64_t static_value2 = 0xb390e0132a0d1f39ULL;
};

template<class ContainerAllocator>
struct DataType< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jaskier_msgs/tipCoords";
  }

  static const char* value(const ::jaskier_msgs::tipCoords_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# stores fingertip coordinates\n"
"\n"
"float64[3] thumb\n"
"float64[3] index\n"
"float64[3] middle\n"
"float64[3] ring\n"
"float64[3] little\n"
;
  }

  static const char* value(const ::jaskier_msgs::tipCoords_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.thumb);
      stream.next(m.index);
      stream.next(m.middle);
      stream.next(m.ring);
      stream.next(m.little);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tipCoords_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jaskier_msgs::tipCoords_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jaskier_msgs::tipCoords_<ContainerAllocator>& v)
  {
    s << indent << "thumb[]" << std::endl;
    for (size_t i = 0; i < v.thumb.size(); ++i)
    {
      s << indent << "  thumb[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.thumb[i]);
    }
    s << indent << "index[]" << std::endl;
    for (size_t i = 0; i < v.index.size(); ++i)
    {
      s << indent << "  index[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.index[i]);
    }
    s << indent << "middle[]" << std::endl;
    for (size_t i = 0; i < v.middle.size(); ++i)
    {
      s << indent << "  middle[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.middle[i]);
    }
    s << indent << "ring[]" << std::endl;
    for (size_t i = 0; i < v.ring.size(); ++i)
    {
      s << indent << "  ring[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.ring[i]);
    }
    s << indent << "little[]" << std::endl;
    for (size_t i = 0; i < v.little.size(); ++i)
    {
      s << indent << "  little[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.little[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JASKIER_MSGS_MESSAGE_TIPCOORDS_H
