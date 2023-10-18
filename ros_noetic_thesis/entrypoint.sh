#!/bin/bash

set -e

source /opt/ros/noetic/setup.bash
source /root/ros_thesis/event_ws/devel/setup.bash

echo "Provided arguments: $@"

exec "$@"