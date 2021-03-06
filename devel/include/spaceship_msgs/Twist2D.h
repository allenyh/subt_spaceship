// Generated by gencpp from file spaceship_msgs/Twist2D.msg
// DO NOT EDIT!


#ifndef SPACESHIP_MSGS_MESSAGE_TWIST2D_H
#define SPACESHIP_MSGS_MESSAGE_TWIST2D_H


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
struct Twist2D_
{
  typedef Twist2D_<ContainerAllocator> Type;

  Twist2D_()
    : v(0.0)
    , omega(0.0)  {
    }
  Twist2D_(const ContainerAllocator& _alloc)
    : v(0.0)
    , omega(0.0)  {
  (void)_alloc;
    }



   typedef float _v_type;
  _v_type v;

   typedef float _omega_type;
  _omega_type omega;





  typedef boost::shared_ptr< ::spaceship_msgs::Twist2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spaceship_msgs::Twist2D_<ContainerAllocator> const> ConstPtr;

}; // struct Twist2D_

typedef ::spaceship_msgs::Twist2D_<std::allocator<void> > Twist2D;

typedef boost::shared_ptr< ::spaceship_msgs::Twist2D > Twist2DPtr;
typedef boost::shared_ptr< ::spaceship_msgs::Twist2D const> Twist2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spaceship_msgs::Twist2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spaceship_msgs::Twist2D_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spaceship_msgs::Twist2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spaceship_msgs::Twist2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spaceship_msgs::Twist2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83d908ae096ccc868297e71d8684d284";
  }

  static const char* value(const ::spaceship_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83d908ae096ccc86ULL;
  static const uint64_t static_value2 = 0x8297e71d8684d284ULL;
};

template<class ContainerAllocator>
struct DataType< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spaceship_msgs/Twist2D";
  }

  static const char* value(const ::spaceship_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 v\n\
float32 omega\n\
";
  }

  static const char* value(const ::spaceship_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.v);
      stream.next(m.omega);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Twist2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spaceship_msgs::Twist2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spaceship_msgs::Twist2D_<ContainerAllocator>& v)
  {
    s << indent << "v: ";
    Printer<float>::stream(s, indent + "  ", v.v);
    s << indent << "omega: ";
    Printer<float>::stream(s, indent + "  ", v.omega);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPACESHIP_MSGS_MESSAGE_TWIST2D_H
