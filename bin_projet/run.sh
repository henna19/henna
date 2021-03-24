#!/bin/bash

dir=$(pwd)
cd ..
cd ..
dir=$(pwd)
source $dir/devel/setup.bash #sourcing the ROS package

#roslaunch bin_projet bin_s.launch 

sleep 3s

rosservice call /bin_state_server "id_poubelle:
  data: 1
state:
  data: 1"

sleep 4s

rosservice call /bin_state_server "id_poubelle:
  data: 4
state:
  data: 1"
