hrl-kdl
=======

Kinematics and geometry utilities for KDL

See documentation here: http://wiki.ros.org/hrl-kdl

This forks includes support for ROS noetic and python 3. 

# Installation:

See below for installing:

- Clone the hrl_kdl repository in your catkin-ws folder
       
      cd ~/catkin_ws/src/
      git clone https://github.com/yanseim/hrl-kdl.git
      
- install
      
      cd hrl-kdl
      sh install_kdl.sh

      
# Usage:

- if you want to get jacobian explicitly:
  
      from urdf_parser_py.urdf import URDF
      from pykdl_utils.kdl_parser import kdl_tree_from_urdf_model
      from pykdl_utils.kdl_kinematics import KDLKinematics

      robot = URDF.from_xml_file("/home/srt/ur3_ws/src/control/arm_control/urdf/ur3.urdf") # change urdf path
      tree = kdl_tree_from_urdf_model(robot)
      kdl_kin = KDLKinematics(robot,"base_link","wrist_3_link") # change ee name
      J = kdl_kin.jacobian(q)