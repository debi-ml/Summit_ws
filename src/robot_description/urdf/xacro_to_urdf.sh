#!/bin/bash
source /opt/ros/noetic/setup.bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# add to ROS package path
export ROS_PACKAGE_PATH=${SCRIPT_DIR}/../..:$ROS_PACKAGE_PATH
echo "Using ROS_PACKAGE_PATH ${ROS_PACKAGE_PATH}"
rosrun xacro xacro --inorder -o summit_xl_new_two.urdf summit_xl_new_two.xacro
