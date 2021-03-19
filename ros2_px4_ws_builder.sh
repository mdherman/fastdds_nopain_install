# Shell script for creating ROS 2 workspace for PX4 bridge with companion computer.
# Works with: foxy, eloquent
# ------------------------------------

echo "Distribution"
echo "* foxy"
echo "* eloquent"
read -p "Select: " ros2_distribution
echo ""


mkdir -p ~/px4_ros_com_ros2/src

git clone https://github.com/PX4/px4_ros_com.git ~/px4_ros_com_ros2/src/px4_ros_com
git clone https://github.com/PX4/px4_msgs.git ~/px4_ros_com_ros2/src/px4_msgs

cd ~/px4_ros_com_ros2

if [ $ros2_distribution == 'eloquent' ] 
then source /opt/ros/eloquent/setup.bash
fi

if [ $ros2_distribution == 'foxy' ]
then source /opt/ros/foxy/setup.bash
fi

source /opt/ros/eloquent/setup.bash
colcon build
