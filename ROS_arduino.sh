#!/bin/bash

sudo apt install ros-kinetic-rosserial*
cd ~/Downloads
wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar Jxfv arduino-1.8.5-linux64.tar.xz 
cd ~/Arduino/libraries/
roscore 
rosrun rosserial_arduino make_libraries.py .