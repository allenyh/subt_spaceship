// Generated by gencpp from file spaceship_msgs/MotorsCmd.msg
// DO NOT EDIT!


#ifndef SPACESHIP_MSGS_MESSAGE_MOTORSCMD_H
#define SPACESHIP_MSGS_MESSAGE_MOTORSCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace spaceship_msgs
{
template <class ContainerAllocator>
struct MotorsCmd_
{
  typedef MotorsCmd_<ContainerAllocator> Type;

  MotorsCmd_()
    : vel_front_left(0.0)
    , vel_front_right(0.0)  {
    }
  MotorsCmd_(const ContainerAllocator& _alloc)
    : vel_front_left(0.0)
    , vel_front_right(0.0)  {
  (void)_alloc;
    }



   typedef float _vel_front_left_type;
  _vel_front_left_type vel_front_left;

   typedef float _vel_front_right_type;
  _vel_front_right_type vel_front_right;





  typedef boost::shared_ptr< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> const> ConstPtr;

}; // struct MotorsCmd_

typedef ::spaceship_msgs::MotorsCmd_<std::allocator<void> > MotorsCmd;

typedef boost::shared_ptr< ::spaceship_msgs::MotorsCmd > MotorsCmdPtr;
typedef boost::shared_ptr< ::spaceship_msgs::MotorsCmd const> MotorsCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spaceship_msgs::MotorsCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace spaceship_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'spaceship_msgs': ['/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8c91d642ac64a555144121c4ff22ec24";
  }

  static const char* value(const ::spaceship_msgs::MotorsCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8c91d642ac64a555ULL;
  static const uint64_t static_value2 = 0x144121c4ff22ec24ULL;
};

template<class ContainerAllocator>
struct DataType< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spaceship_msgs/MotorsCmd";
  }

  static const char* value(const ::spaceship_msgs::MotorsCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 vel_front_left\n\
float32 vel_front_right\n\
";
  }

  static const char* value(const ::spaceship_msgs::MotorsCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vel_front_left);
      stream.next(m.vel_front_right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorsCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spaceship_msgs::MotorsCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spaceship_msgs::MotorsCmd_<ContainerAllocator>& v)
  {
    s << indent << "vel_front_left: ";
    Printer<float>::stream(s, indent + "  ", v.vel_front_left);
    s << indent << "vel_front_right: ";
    Printer<float>::stream(s, indent + "  ", v.vel_front_right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPACESHIP_MSGS_MESSAGE_MOTORSCMD_H