# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/miguel/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/miguel/catkin_ws/build

# Utility rule file for roslint_sensor_stick.

# Include the progress variables for this target.
include PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/progress.make

roslint_sensor_stick: PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/build.make
	cd /home/miguel/catkin_ws/src/PCL-ROS-cluster-Segmentation && /opt/ros/kinetic/share/roslint/cmake/../../../lib/roslint/cpplint src/cloud_transformer.cpp
.PHONY : roslint_sensor_stick

# Rule to build all files generated by this target.
PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/build: roslint_sensor_stick

.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/build

PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/clean:
	cd /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation && $(CMAKE_COMMAND) -P CMakeFiles/roslint_sensor_stick.dir/cmake_clean.cmake
.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/clean

PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/depend:
	cd /home/miguel/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/miguel/catkin_ws/src /home/miguel/catkin_ws/src/PCL-ROS-cluster-Segmentation /home/miguel/catkin_ws/build /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/roslint_sensor_stick.dir/depend

