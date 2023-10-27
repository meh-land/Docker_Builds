FROM yahiawalid/ubuntu_base:curl
# Set Locale
RUN apt update && apt upgrade -y && apt install locales -y
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN export LANG=en_US.UTF-8

# Setup Sources
RUN apt install software-properties-common -y
RUN add-apt-repository universe -y

RUN apt update && apt install curl -y
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 packages
RUN apt update -y
RUN apt upgrade -y
RUN apt install ros-humble-ros-base -y 

# Environment setup
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# Install Demo nodes
RUN apt install ros-humble-demo-nodes-cpp -y
RUN apt install ros-humble-demo-nodes-py -y


CMD bash