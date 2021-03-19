# Shell script for installing PX - ROS 2 bridge
# Works with: foxy, eloquent
# ------------------------------------


mkdir -p ~/px4_ros_com_ros2/src
cd ~/px4_ros_com_ros2/src

git clone https://github.com/PX4/px4_ros_com.git ~/px4_ros_com_ros2/src/px4_ros_com
git clone https://github.com/PX4/px4_msgs.git ~/px4_ros_com_ros2/src/px4_msgs

cd ~/px4_ros_com_ros2
source src/px4_ros_com/scripts/build_ros2_workspace.bash
