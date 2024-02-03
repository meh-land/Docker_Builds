#!/bin/bash
section () {
	# This function prints the name of the current running section in a different color
	# Useful for debugging and tracing
	tput setaf 1
	echo $1
	tput sgr0
}

set -e

section "Update"
sudo apt update && sudo apt upgrade -y

section "Setup Sources"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

section "Setup Keys"
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

section "Install ROS1 packages"
sudo apt update && sudo apt upgrade -y
sudo apt install ros-noetic-desktop-full

section "Environment setup"
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

section "Install my software"
sudo apt install vim tmux git htop net-tools inetutils-ping openssh-server ufw -y

section "Create Ros WS"
mkdir -p ~/my_ws/src
cd ~/my_ws
catkin_make
echo 'source ~/my_ws/devel/setup.bash' >> ~/.bashrc

section "Create Ros package"
cd ~/my_ws/src
catkin_create_pkg torta_web_control rospy

section "Get ros python scripts"
git clone https://github.com/meh-land/simple_UI_ROS.git ~/my_ws/src/torta_web_control/scripts
cd ~/my_ws
catkin_make
set +e