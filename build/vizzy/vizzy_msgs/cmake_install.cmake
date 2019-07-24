# Install script for directory: /home/miguel/catkin_ws/src/vizzy/vizzy_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/action" TYPE FILE FILES
    "/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/action/Gaze.action"
    "/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/action/Cartesian.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeAction.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeActionGoal.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeActionResult.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeActionFeedback.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeGoal.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeResult.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/GazeFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianAction.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianActionGoal.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianActionResult.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianActionFeedback.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianGoal.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianResult.msg"
    "/home/miguel/catkin_ws/devel/share/vizzy_msgs/msg/CartesianFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/msg" TYPE FILE FILES
    "/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/msg/Tactile.msg"
    "/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/msg/TacVector.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/cmake" TYPE FILE FILES "/home/miguel/catkin_ws/build/vizzy/vizzy_msgs/catkin_generated/installspace/vizzy_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/include/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/roseus/ros/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/common-lisp/ros/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/share/gennodejs/ros/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/miguel/catkin_ws/devel/lib/python2.7/dist-packages/vizzy_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/miguel/catkin_ws/build/vizzy/vizzy_msgs/catkin_generated/installspace/vizzy_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/cmake" TYPE FILE FILES "/home/miguel/catkin_ws/build/vizzy/vizzy_msgs/catkin_generated/installspace/vizzy_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs/cmake" TYPE FILE FILES
    "/home/miguel/catkin_ws/build/vizzy/vizzy_msgs/catkin_generated/installspace/vizzy_msgsConfig.cmake"
    "/home/miguel/catkin_ws/build/vizzy/vizzy_msgs/catkin_generated/installspace/vizzy_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vizzy_msgs" TYPE FILE FILES "/home/miguel/catkin_ws/src/vizzy/vizzy_msgs/package.xml")
endif()

