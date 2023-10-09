FROM osrf/ros:noetic-desktop-full

RUN sudo apt-get update \
&& sudo apt upgrade -y \
&& sudo apt install -y \
nano \
git \
python3-pip \
&& rm -rf /var/lib/apt/lists/*

ARG USERNAME=hamza
ARG USER_UID=1000
ARG USER_GID=$USER_UID

#Create a non-root user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --gid $USER_GID --uid $USER_UID -m $USERNAME \
    && mkdir /home/$USERNAME/.config && chown $USER_UID:$USER_GID /home/$USERNAME/.config 

#Setup sudo
RUN mkdir -p /etc/sudoer.d \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoer.d/$USERNAME\
    && chmod 0440 /etc/sudoer.d/$USERNAME \
    && rm -rf /var/lib/apt/lists/*

