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

# Utility rule file for obj_recognition_gencfg.

# Include the progress variables for this target.
include PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/progress.make

PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg: /home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition/cfg/PclConfig.py


/home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h: /home/miguel/catkin_ws/src/PCL-ROS-cluster-Segmentation/config/Pcl.cfg
/home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/miguel/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from config/Pcl.cfg: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h /home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition/cfg/PclConfig.py"
	cd /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation && ../catkin_generated/env_cached.sh /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation/setup_custom_pythonpath.sh /home/miguel/catkin_ws/src/PCL-ROS-cluster-Segmentation/config/Pcl.cfg /opt/ros/kinetic/share/dynamic_reconfigure/cmake/.. /home/miguel/catkin_ws/devel/share/obj_recognition /home/miguel/catkin_ws/devel/include/obj_recognition /home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition

/home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.dox: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.dox

/home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig-usage.dox: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig-usage.dox

/home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition/cfg/PclConfig.py: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition/cfg/PclConfig.py

/home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.wikidoc: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.wikidoc

obj_recognition_gencfg: PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg
obj_recognition_gencfg: /home/miguel/catkin_ws/devel/include/obj_recognition/PclConfig.h
obj_recognition_gencfg: /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.dox
obj_recognition_gencfg: /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig-usage.dox
obj_recognition_gencfg: /home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/obj_recognition/cfg/PclConfig.py
obj_recognition_gencfg: /home/miguel/catkin_ws/devel/share/obj_recognition/docs/PclConfig.wikidoc
obj_recognition_gencfg: PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/build.make

.PHONY : obj_recognition_gencfg

# Rule to build all files generated by this target.
PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/build: obj_recognition_gencfg

.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/build

PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/clean:
	cd /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation && $(CMAKE_COMMAND) -P CMakeFiles/obj_recognition_gencfg.dir/cmake_clean.cmake
.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/clean

PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/depend:
	cd /home/miguel/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/miguel/catkin_ws/src /home/miguel/catkin_ws/src/PCL-ROS-cluster-Segmentation /home/miguel/catkin_ws/build /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation /home/miguel/catkin_ws/build/PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PCL-ROS-cluster-Segmentation/CMakeFiles/obj_recognition_gencfg.dir/depend

