cd ~/catkin_ws/src/hrl-kdl/pykdl_utils/
python3 setup.py build
sudo python3 setup.py install

cd ~/catkin_ws/src/hrl-kdl/hrl_geom/
python3 setup.py build
sudo python3 setup.py install

sudo apt-get install ros-noetic-urdf-parser-plugin
sudo apt-get install ros-noetic-urdfdom-py

cd ~/catkin_ws
catkin build
