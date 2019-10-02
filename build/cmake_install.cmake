# Install script for directory: /home/miguel/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/miguel/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE PROGRAM FILES "/home/miguel/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE PROGRAM FILES "/home/miguel/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/setup.bash;/home/miguel/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE FILE FILES
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/setup.sh;/home/miguel/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE FILE FILES
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/setup.zsh;/home/miguel/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE FILE FILES
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/miguel/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/miguel/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/miguel/catkin_ws/install" TYPE FILE FILES "/home/miguel/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/miguel/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/atlas_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_common/baxter_common/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_common/baxter_description/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter/baxter_sdk/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_simulator/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_dev/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros_pkgs/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/iri_wam_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_bringup/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_control/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_gazebo/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/moveit_robots/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_opencv/opencv_tests/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/r2_moveit_generated/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_common/rethink_ee_description/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/baxter/baxter_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_common/baxter_maintenance_msgs/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_opencv/vision_opencv/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/vision_visp/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_msgs/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_common/baxter_core_msgs/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_interface/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_sim_io/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_opencv/cv_bridge/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_tools/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_msgs/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_opencv/image_geometry/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_driver/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_demo/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/rail_segmentation/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_sim_controllers/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_plugins/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros_control/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_gazebo/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_sim_kinematics/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_sim_hardware/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_simulator/baxter_sim_examples/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/baxter/baxter_ikfast_left_arm_plugin/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/baxter/baxter_ikfast_right_arm_plugin/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2n6s300_ikfast/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s6s300_ikfast/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s7s300_ikfast/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/m1n6s300_ikfast/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/moveit_robots/atlas_v3_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/visp_bridge/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/visp_camera_calibration/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/visp_hand2eye_calibration/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/visp_tracker/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/vision_visp/visp_auto_tracker/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/kinova_arm_moveit_demo/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/cluster_segmentation/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/baxter_examples/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_description/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2n6s300_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s6s300_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/j2s7s300_moveit_config/cmake_install.cmake")
  include("/home/miguel/catkin_ws/build/kinova-ros/kinova_moveit/robot_configs/m1n6s300_moveit_config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/miguel/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
