FROM osrf/ros:noetic-desktop-full

RUN sudo apt update && sudo apt upgrade -y && sudo apt install -y nano && rm -rf /var/lib/apt/lists/*
RUN sudo apt install -y curl
RUN sudo apt install -y git
RUN sudo apt install -y python3-pip

ARG USERNAME=hamza
ARG USER_UID=1000
ARG USER_GID=$USER_UID

#Create a non-root user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --gid $USER_GID --uid $USER_UID -m $USERNAME \
    && mkdir /home/$USERNAME/.config && chown $USER_UID:$USER_GID /home/$USERNAME/.config 

#Setup sudo
RUN apt update && apt install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoer.d/$USERNAME\
    && chmod 0440 /etc/sudoer.d/$USERNAME \
    && rm -rf /var/lib/apt/lists/*

