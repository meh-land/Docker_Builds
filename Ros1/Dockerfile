FROM osrf/ros:noetic-desktop-full-focal
RUN apt update && apt upgrade -y
RUN apt install vim tmux git htop -y
RUN echo 'source /opt/ros/noetic/setup.bash' >> ~/.bashrc
CMD roscore