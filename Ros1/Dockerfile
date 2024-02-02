FROM osrf/ros:noetic-desktop-full-focal
RUN apt update && apt upgrade -y
RUN apt install vim tmux git htop net-tools inetutils-ping curl openssh-server ufw -y
RUN echo 'source /opt/ros/noetic/setup.bash' >> ~/.bashrc

# Create ROS WS
RUN mkdir -p ~/my_ws/src
RUN cd ~/my_ws
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; cd ~/my_ws; catkin_make'
RUN echo 'source ~/my_ws/devel/setup.bash' >> ~/.bashrc

# Create ROS Package
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; cd ~/my_ws/src; catkin_create_pkg torta_web_control rospy'
WORKDIR /root/my_ws/src/torta_web_control
# RUN mkdir scripts && cd scripts
RUN git clone https://github.com/meh-land/simple_UI_ROS.git ./scripts
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; cd ~/my_ws; catkin_make'
WORKDIR /root
CMD roscore
