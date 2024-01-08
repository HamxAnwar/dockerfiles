FROM osrf/ros:humble-desktop

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y \
nano \
git \
python3-pip \
curl \
xcb

#Make thesis workspace
RUN mkdir -p /root/ros_office
VOLUME /home/loki/ros_office:/root/ros_office

WORKDIR /root/ros_office

#Modify the .bashrc file in the container.

#Set the default command
CMD ["bash"]
