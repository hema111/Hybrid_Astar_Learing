// Generated by gencpp from file map_msgs/ProjectedMapsInfoResponse.msg
// DO NOT EDIT!


#ifndef MAP_MSGS_MESSAGE_PROJECTEDMAPSINFORESPONSE_H
#define MAP_MSGS_MESSAGE_PROJECTEDMAPSINFORESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace map_msgs
{
template <class ContainerAllocator>
struct ProjectedMapsInfoResponse_
{
  typedef ProjectedMapsInfoResponse_<ContainerAllocator> Type;

  ProjectedMapsInfoResponse_()
    {
    }
  ProjectedMapsInfoResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ProjectedMapsInfoResponse_

typedef ::map_msgs::ProjectedMapsInfoResponse_<std::allocator<void> > ProjectedMapsInfoResponse;

typedef boost::shared_ptr< ::map_msgs::ProjectedMapsInfoResponse > ProjectedMapsInfoResponsePtr;
typedef boost::shared_ptr< ::map_msgs::ProjectedMapsInfoResponse const> ProjectedMapsInfoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace map_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'map_msgs': ['/home/estrong/work/demo_hybrid_astar/src/navigation_msgs/map_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_msgs/ProjectedMapsInfoResponse";
  }

  static const char* value(const ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProjectedMapsInfoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::map_msgs::ProjectedMapsInfoResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MSGS_MESSAGE_PROJECTEDMAPSINFORESPONSE_H
