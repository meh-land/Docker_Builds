#!/bin/bash
section () {
	# This function prints the name of the current running section in a different color
	# Useful for debugging and tracing
	tput setaf 1
	echo $1
	tput sgr0
    sleep 10
}

set -e

section "Set locale"
apt update && apt upgrade -y && apt install locales -y
locale-gen en_US en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

section "Setup Sources"
apt install software-properties-common -y
add-apt-repository universe -y

apt update && apt install curl -y
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

section "Install ROS 2 packages"
apt update -y
apt upgrade -y
apt install ros-humble-ros-base -y 

section "Environment setup"
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
source ~/.bashrc

section "Install Demo nodes"
apt install ros-humble-demo-nodes-{cpp,py} -y

set +e