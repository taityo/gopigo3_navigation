#!/bin/sh
# ros master setup script
# $0:hostname $1:ip adress

# ros network
~/.bashrc << ROS_MASTER_URI=http://$1:11311
~/.bashrc << ROS_IP=$1
~/.bashrc << ROS_HOSTNAME=$0
source ~/.bashrc

# hostname
/etc/hosts << $0 $1

# ntp server

# package install
apt-get install ros-kinetic-navigation
apt-get install ros-kinetic-gmapping
apt-get install ros-kinetic-rviz
apt-get install ros-kinetic-gazebo-ros
#apt-get install ros-kinetic-gazebo-pkgs
apt-get install ros-kinetic-joint-state-publisher
apt-get install ros-kinetic-robot-state-publisher

