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

set +e