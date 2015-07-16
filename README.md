# Swarm Central
Repository to clone and run entire swarm IIT-Kgp architecture.

Dependencies: ROS, Gazebo

1. Clone the repository using:
```git clone --recursive https://github.com/Swarm-IITKgp/swarm_central.git ```

2. Run: [T is numbder of agents]
```sh
	sh swarm_simulator/scripts/generator.sh T
	roslaunch swarm_simulator swarm.launch
	rosrun coverage voronoi_main T
	sh singlrobot/scripts/generator.sh T
	roslaunch singlerobot singlerobot.launch
```
	
