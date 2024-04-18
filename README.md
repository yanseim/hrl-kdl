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
      
- Checkout to the noetic-devel branch
      
      cd hrl-kdl

- Install pykd_utils

      cd pykdl_utils
      python3 setup.py build
      sudo python3 setup.py install

- Install hrl_geom

      cd ~/catkin_ws/src/hrl-kdl/hrl_geom/
      python3 setup.py build
      sudo python3 setup.py install

- Install urdf_parser and urdfdom-py

      sudo apt-get install ros-noetic-urdf-parser-plugin
      sudo apt-get install ros-noetic-urdfdom-py

- Build the catkin workspace

      cd ~/catkin_ws
      catkin build
      
# Usage:

- if you want to get jacobian explicitly:
```
from urdf_parser_py.urdf import URDF
from pykdl_utils.kdl_parser import kdl_tree_from_urdf_model
from pykdl_utils.kdl_kinematics import KDLKinematics

robot = URDF.from_xml_file("/home/srt/ur3_ws/src/control/arm_control/urdf/ur3.urdf") # change urdf path
tree = kdl_tree_from_urdf_model(robot)
kdl_kin = KDLKinematics(robot,"base_link","wrist_3_link") # change ee name
J = kdl_kin.jacobian(q)
```
