#!/bin/sh

# Application setup:
# Map My World
# pwd=./RobotND-Map-My-World

xterm -e " source devel/setup.bash;roslaunch my_robot world.launch " &

sleep 20
xterm -e " source devel/setup.bash;roslaunch my_robot mapping.launch " &

sleep 20 
xterm -e " source devel/setup.bash;rosrun teleop_twist_keyboard teleop_twist_keyboard.py " &

sleep 5 
xterm -e " source devel/setup.bash;rtabmap-databaseViewer ~/.ros/rtabmap.db "

