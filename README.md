# Swarm Central
Repository to clone and run entire swarm IIT-Kgp architecture.

Dependencies: ROS, Gazebo

1. Clone the repository using:
```git clone --recursive https://github.com/Swarm-IITKgp/swarm_central.git ```

2. Run (while in swarm_central directory): [T is number of agents]
```sh
	cd swarm_simulator
	sh scripts/generator.sh T
	roslaunch swarm_simulator swarm.launch
	rosrun swarm_coverage voronoi_main T
	cd ../singleRobot/
	sh scripts/generator.sh T
	roslaunch singlerobot singlerobot.launch
```
	
