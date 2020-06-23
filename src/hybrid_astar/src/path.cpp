#include "path.h"

using namespace HybridAStar;


//###################################################
//                                         CLEAR PATH
//###################################################

void Path::clear() {
  Node3D node;
  path.poses.clear();
  pathNodes.markers.clear();
  pathVehicles.markers.clear();
  addNode(node, 0);
  addVehicle(node, 1);
  publishPath();
  publishPathNodes();
  publishPathVehicles();
}

////###################################################
////                                         TRACE PATH
////###################################################
//// __________
//// TRACE PATH
//void Path::tracePath(const Node3D* node, int i) {
//  if (i == 0) {
//    path.header.stamp = ros::Time::now();
//  }

//  if (node == nullptr) { return; }

//  addSegment(node);
//  addNode(node, i);
//  i++;
//  addVehicle(node, i);
//  i++;

//  tracePath(node->getPred(), i);
//}

//###################################################
//                                         TRACE PATH
//###################################################
// __________
// TRACE PATH
void Path::updatePath(std::vector<Node3D> nodePath) {
  path.header.stamp = ros::Time::now();
  int k = 0;

  for (size_t i = 0; i < nodePath.size(); ++i) {
    addSegment(nodePath[i]);
    addNode(nodePath[i], k);
    k++;
    addVehicle(nodePath[i], k);
    k++;
  }

  return;
}
// ___________
// ADD SEGMENT
void Path::addSegment(const Node3D& node) {
  geometry_msgs::PoseStamped vertex;
  vertex.pose.position.x = node.getX() * Constants::cellSize;
  vertex.pose.position.y = node.getY() * Constants::cellSize;
  vertex.pose.position.z = 0;
  vertex.pose.orientation.x = 0;
  vertex.pose.orientation.y = 0;
  vertex.pose.orientation.z = 0;
  vertex.pose.orientation.w = 0;
  path.poses.push_back(vertex);
}

// ________
// ADD NODE
void Path::addNode(const Node3D& node, int i) {
  visualization_msgs::Marker pathNode;

  // delete all previous markers
  if (i == 0) {
    pathNode.action = 3;
  }

  pathNode.header.frame_id = "path";
  pathNode.header.stamp = ros::Time(0);
  pathNode.id = i;
  pathNode.type = visualization_msgs::Marker::SPHERE;
  pathNode.scale.x = 0.1;
  pathNode.scale.y = 0.1;
  pathNode.scale.z = 0.1;
  pathNode.color.a = 1.0;

  if (smoothed) {
    pathNode.color.r = Constants::pink.red;
    pathNode.color.g = Constants::pink.green;
    pathNode.color.b = Constants::pink.blue;
  } else {
    pathNode.color.r = Constants::purple.red;
    pathNode.color.g = Constants::purple.green;
    pathNode.color.b = Constants::purple.blue;
  }

  pathNode.pose.position.x = node.getX() * Constants::cellSize;
  pathNode.pose.position.y = node.getY() * Constants::cellSize;
  pathNodes.markers.push_back(pathNode);
}

void Path::addVehicle(const Node3D& node, int i) {
  visualization_msgs::Marker pathVehicle;

  // delete all previous markersg
  if (i == 1) {
    pathVehicle.action = 3;
  }

  pathVehicle.header.frame_id = "path";
  pathVehicle.header.stamp = ros::Time(0);
  pathVehicle.id = i;
/*
  pathVehicle.type = visualization_msgs::Marker::CUBE;
  pathVehicle.scale.x = Constants::length - Constants::bloating * 2;
  pathVehicle.scale.y = Constants::width - Constants::bloating * 2;
  pathVehicle.scale.z = 1;
  pathVehicle.color.a = 0.1;
  pathVehicle.pose.position.x = node.getX() * Constants::cellSize;
  pathVehicle.pose.position.y = node.getY() * Constants::cellSize;
  pathVehicle.pose.orientation = tf::createQuaternionMsgFromYaw(node.getT());
*/

  pathVehicle.type = visualization_msgs::Marker::LINE_LIST;
  pathVehicle.scale.x = 0.05;
  pathVehicle.scale.y = 0.05;
  pathVehicle.scale.z = 0.05;
  pathVehicle.color.a = 1.0;

  double x = node.getX() * Constants::cellSize;
  double y = node.getY() * Constants::cellSize;
  double yaw = node.getT();
  double half_width = (Constants::width - Constants::bloating * 2) / 2;
  double half_length = (Constants::length - Constants::bloating * 2) / 2;
  double x0 = 0 + half_length;
  double y0 = 0 + half_width;
  double x1 = 0 + half_length;
  double y1 = 0 - half_width;
  double x2 = 0 - half_length;
  double y2 = 0 - half_width;
  double x3 = 0 - half_length;
  double y3 = 0 + half_width;

  double cos_yaw = cos(yaw);
  double sin_yaw = sin(yaw);

  geometry_msgs::Point p0, p1, p2, p3;
  p0.x = x + x0 * cos_yaw - y0 * sin_yaw;
  p0.y = y + x0 * sin_yaw + y0 * cos_yaw;
  p0.z = 0;
  p1.x = x + x1 * cos_yaw - y1 * sin_yaw;
  p1.y = y + x1 * sin_yaw + y1 * cos_yaw;
  p1.z = 0;
  p2.x = x + x2 * cos_yaw - y2 * sin_yaw;
  p2.y = y + x2 * sin_yaw + y2 * cos_yaw;
  p2.z = 0;
  p3.x = x + x3 * cos_yaw - y3 * sin_yaw;
  p3.y = y + x3 * sin_yaw + y3 * cos_yaw;
  p3.z = 0;

  // The line list needs two points for each line
  pathVehicle.points.push_back(p0);
  pathVehicle.points.push_back(p1);

  pathVehicle.points.push_back(p1);
  pathVehicle.points.push_back(p2);

  pathVehicle.points.push_back(p2);
  pathVehicle.points.push_back(p3);

  pathVehicle.points.push_back(p3);
  pathVehicle.points.push_back(p0);

  if (smoothed) {
    pathVehicle.color.r = Constants::blue.red;
    pathVehicle.color.g = Constants::blue.green;
    pathVehicle.color.b = Constants::blue.blue;
  } else {
    pathVehicle.color.r = Constants::teal.red;
    pathVehicle.color.g = Constants::teal.green;
    pathVehicle.color.b = Constants::teal.blue;
  }

  pathVehicles.markers.push_back(pathVehicle);
}
