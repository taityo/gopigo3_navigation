#!/bin/sh
# ros master setup script
# $0:hostname $1:ip adress

# ros network
~/.bashrc << export ROS_MASTER_URI=http://$1:11311
~/.bashrc << export ROS_IP=$1
~/.bashrc << export ROS_HOSTNAME=$0
~/.bashrc << export ROSLAUNCH_SSH_UNKNOWN=1
source ~/.bashrc

# hostname
/etc/hosts << $0 $1

# ntp server
ntpdate ntp.nict.jp

# package install
apt-get install ros-kinetic-navigation
apt-get install ros-kinetic-gmapping
apt-get install ros-kinetic-rviz
apt-get install ros-kinetic-gazebo-ros
#apt-get install ros-kinetic-gazebo-pkgs
apt-get install ros-kinetic-joint-state-publisher
apt-get install ros-kinetic-robot-state-publisher

