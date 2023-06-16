# Simulation Design of a Robotic Mobile Manipulator

![Robot Image](src/assets/robot_image.png)


## Description

This repository is part of a master thesis project that focuses on the implementation of a mobile manipulator robotic system using the Summit XL omnidirectional mobile platform and the Franka Emika Panda robot arm within the Isaac Sim simulation tool. The project utilizes the ROS (Robot Operating System) framework for controlling and simulating the robotic system.

The main objectives of this project are:

- Integrate the Summit XL mobile platform and the Franka Emika Panda robot arm.
- Utilize the Isaac Sim simulation tool for realistic and accurate simulation of the robotic system.
- Achieve autonomous navigation using the nav2 package.
- Implement motion planning and trajectory execution using the Moveit2 platform.

The repository contains the necessary code, configurations, and documentation to set up and run the robotic system in the simulated environment. The codebase includes modules for performing navigation tasks, and executing motion planning and trajectory generation.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)

## Installation

1. Install [Isaac Sim](https://example.com) by following the installation instructions provided in the official documentation.

2. Install [ROS2 Foxy](https://example.com) by following the installation instructions provided in the official documentation.

3. Install [nav2](https://example.com) by following the installation instructions provided in the official documentation.

4. Install [Docker](https://example.com) by following the installation instructions provided in the official documentation.

5. Clone the repository:

   ```shell
   git clone https://github.com/your-username/your-repository.git
   ```

6. Build your packages:

   ```shell
   cd your-repository
   colcon build
   ```
7. Follow the tutorial [here](https://example.com) to install and build a Ubuntu 22.04 Humble based Docker image with Moveit2.

8. Run the Docker container and run the terminal using the following command:

   ```shell
   docker exec -it isaac_panda-demo_isaac-1 bash
   ```

9. Inside the Docker container, clone and build the forked and modified `pymoveit2` repository for sending the motion commands for the robot arm using the python scripts:

   ```shell
   git clone https://github.com/mld95/pymoveit2.git
   cd pymoveit2
   colcon build
   ```

## Usage

1. Launch the simulation environment by opening the following .usd file in the Isaac Sim:
`src/robot_description/summit_xl_franka_navigation.usd`

2. Start the autonomous navigation:

   ```shell
   ros2 launch summit_navigation summit_franka_navigation.launch.py
   ```
3. To send the navigation goals programatictly which are defined in `src/isaac_ros_navigation_goal/assets/goals.txt` run the following command:

   ```shell
   ros2 launch isaac_ros_navigation_goal isaac_ros_navigation_goal.launch.py
   ```

4. To control the robot arm using Moveit2 start the docker container: 

   ```shell
   docker compose up demo_isaac
   ```
5. To send commands for the robot arm programaticlly open a terminal in a docker container:

   ```shell
   docker exec -it isaac_panda-demo_isaac-1 bash
   ```
6. Source the pymoveit2 package and run one of the examples:

   ```shell
   source install/local_setup.bash
   ros2 run pymoveit2 grasp_test.py
   ```


## Features

- Utilizes the Isaac Sim simulation tool and ROS framework for controlling and simulating robotic systems.
- Implements an omnidirectional mobile manipulator composed of a Summit XL mobile platform and a Franka Emika Panda robot arm.
- Incorporates the Navigation Stack 2 for autonomous navigation and the Moveit2 platform for motion planning and trajectory execution.
- Provides a comprehensive testing environment to gain insights into the system's workflow and identify areas for improvement.

