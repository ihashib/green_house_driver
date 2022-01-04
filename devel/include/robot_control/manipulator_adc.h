// Generated by gencpp from file robot_control/manipulator_adc.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_MESSAGE_MANIPULATOR_ADC_H
#define ROBOT_CONTROL_MESSAGE_MANIPULATOR_ADC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_control
{
template <class ContainerAllocator>
struct manipulator_adc_
{
  typedef manipulator_adc_<ContainerAllocator> Type;

  manipulator_adc_()
    : base_fd(0)
    , ac1_fd(0)
    , ac2_fd(0)
    , ac3_fd(0)
    , wrist_fd(0)
    , claw_fd(0)  {
    }
  manipulator_adc_(const ContainerAllocator& _alloc)
    : base_fd(0)
    , ac1_fd(0)
    , ac2_fd(0)
    , ac3_fd(0)
    , wrist_fd(0)
    , claw_fd(0)  {
  (void)_alloc;
    }



   typedef uint16_t _base_fd_type;
  _base_fd_type base_fd;

   typedef uint16_t _ac1_fd_type;
  _ac1_fd_type ac1_fd;

   typedef uint16_t _ac2_fd_type;
  _ac2_fd_type ac2_fd;

   typedef uint16_t _ac3_fd_type;
  _ac3_fd_type ac3_fd;

   typedef uint16_t _wrist_fd_type;
  _wrist_fd_type wrist_fd;

   typedef uint16_t _claw_fd_type;
  _claw_fd_type claw_fd;





  typedef boost::shared_ptr< ::robot_control::manipulator_adc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_control::manipulator_adc_<ContainerAllocator> const> ConstPtr;

}; // struct manipulator_adc_

typedef ::robot_control::manipulator_adc_<std::allocator<void> > manipulator_adc;

typedef boost::shared_ptr< ::robot_control::manipulator_adc > manipulator_adcPtr;
typedef boost::shared_ptr< ::robot_control::manipulator_adc const> manipulator_adcConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_control::manipulator_adc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_control::manipulator_adc_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_control::manipulator_adc_<ContainerAllocator1> & lhs, const ::robot_control::manipulator_adc_<ContainerAllocator2> & rhs)
{
  return lhs.base_fd == rhs.base_fd &&
    lhs.ac1_fd == rhs.ac1_fd &&
    lhs.ac2_fd == rhs.ac2_fd &&
    lhs.ac3_fd == rhs.ac3_fd &&
    lhs.wrist_fd == rhs.wrist_fd &&
    lhs.claw_fd == rhs.claw_fd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_control::manipulator_adc_<ContainerAllocator1> & lhs, const ::robot_control::manipulator_adc_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_control::manipulator_adc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control::manipulator_adc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control::manipulator_adc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control::manipulator_adc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control::manipulator_adc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control::manipulator_adc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_control::manipulator_adc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1750cc3164fbe6e56c557c43a182eb58";
  }

  static const char* value(const ::robot_control::manipulator_adc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1750cc3164fbe6e5ULL;
  static const uint64_t static_value2 = 0x6c557c43a182eb58ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_control::manipulator_adc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_control/manipulator_adc";
  }

  static const char* value(const ::robot_control::manipulator_adc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_control::manipulator_adc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 base_fd\n"
"uint16 ac1_fd\n"
"uint16 ac2_fd\n"
"uint16 ac3_fd\n"
"uint16 wrist_fd\n"
"uint16 claw_fd	\n"
;
  }

  static const char* value(const ::robot_control::manipulator_adc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_control::manipulator_adc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base_fd);
      stream.next(m.ac1_fd);
      stream.next(m.ac2_fd);
      stream.next(m.ac3_fd);
      stream.next(m.wrist_fd);
      stream.next(m.claw_fd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct manipulator_adc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_control::manipulator_adc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_control::manipulator_adc_<ContainerAllocator>& v)
  {
    s << indent << "base_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.base_fd);
    s << indent << "ac1_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ac1_fd);
    s << indent << "ac2_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ac2_fd);
    s << indent << "ac3_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ac3_fd);
    s << indent << "wrist_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.wrist_fd);
    s << indent << "claw_fd: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.claw_fd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROL_MESSAGE_MANIPULATOR_ADC_H
