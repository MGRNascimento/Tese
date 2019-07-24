# Install script for directory: /home/miguel/catkin_ws/src/sr_common/sr_robot_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/ActuatorStatistics.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/AuxSpiData.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/BiotacAll.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/Biotac.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/cartesian_data.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/cartesian_position.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/command.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/config.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/contrlr.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/ControllerStatistics.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/ControlType.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/EthercatDebug.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/FromMotorDataType.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/GraspArray.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/JointControllerState.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/joint.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/JointMusclePositionControllerState.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/JointMuscleValveControllerCommand.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/JointMuscleValveControllerState.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/joints_data.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/JointStatistics.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/MechanismStatistics.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/MidProxDataAll.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/MidProxData.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/MotorSystemControls.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/reverseKinematics.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/sendupdate.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/ShadowPST.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/TactileArray.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/Tactile.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/UBI0All.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/UBI0.msg"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/msg/ShadowContactStateStamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/srv" TYPE FILE FILES
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ChangeControlType.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ChangeMotorSystemControls.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ForceController.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/GetSegmentedLine.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/is_hand_occupied.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ManualSelfTest.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/NullifyDemand.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/RobotTeachMode.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetDebugData.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetEffortControllerGains.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetMixedPositionVelocityPidGains.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetPidGains.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SimpleMotorFlasher.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/which_fingers_are_touching.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/GetFastGraspFromBoundingBox.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/PlanTrajectoryFromList.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/PlanTrajectoryFromPrefix.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/PlanNamedTrajectory.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ExecutePlannedTrajectory.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/ListNamedTrajectories.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetTeachMode.srv"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/srv/SetImuScale.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/action" TYPE FILE FILES
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/action/Grasp.action"
    "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/action/PlanGrasp.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspAction.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspActionGoal.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspActionResult.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspActionFeedback.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspGoal.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspResult.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/GraspFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspAction.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspActionGoal.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspActionResult.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspActionFeedback.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspGoal.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspResult.msg"
    "/home/miguel/catkin_ws/devel/share/sr_robot_msgs/msg/PlanGraspFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/cmake" TYPE FILE FILES "/home/miguel/catkin_ws/build/sr_common/sr_robot_msgs/catkin_generated/installspace/sr_robot_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/include/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/roseus/ros/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/common-lisp/ros/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/gennodejs/ros/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/sr_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/miguel/catkin_ws/build/sr_common/sr_robot_msgs/catkin_generated/installspace/sr_robot_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/cmake" TYPE FILE FILES "/home/miguel/catkin_ws/build/sr_common/sr_robot_msgs/catkin_generated/installspace/sr_robot_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs/cmake" TYPE FILE FILES
    "/home/miguel/catkin_ws/build/sr_common/sr_robot_msgs/catkin_generated/installspace/sr_robot_msgsConfig.cmake"
    "/home/miguel/catkin_ws/build/sr_common/sr_robot_msgs/catkin_generated/installspace/sr_robot_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sr_robot_msgs" TYPE FILE FILES "/home/miguel/catkin_ws/src/sr_common/sr_robot_msgs/package.xml")
endif()

