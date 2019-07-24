# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "id_selector: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iid_selector:/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(id_selector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_id_selector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "id_selector" "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_custom_target(_id_selector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "id_selector" "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" "id_selector/BoundingBox:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/id_selector
)
_generate_msg_cpp(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/id_selector
)

### Generating Services

### Generating Module File
_generate_module_cpp(id_selector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/id_selector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(id_selector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(id_selector_generate_messages id_selector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_cpp _id_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_cpp _id_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(id_selector_gencpp)
add_dependencies(id_selector_gencpp id_selector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS id_selector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/id_selector
)
_generate_msg_eus(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/id_selector
)

### Generating Services

### Generating Module File
_generate_module_eus(id_selector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/id_selector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(id_selector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(id_selector_generate_messages id_selector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_eus _id_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_eus _id_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(id_selector_geneus)
add_dependencies(id_selector_geneus id_selector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS id_selector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/id_selector
)
_generate_msg_lisp(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/id_selector
)

### Generating Services

### Generating Module File
_generate_module_lisp(id_selector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/id_selector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(id_selector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(id_selector_generate_messages id_selector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_lisp _id_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_lisp _id_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(id_selector_genlisp)
add_dependencies(id_selector_genlisp id_selector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS id_selector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/id_selector
)
_generate_msg_nodejs(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/id_selector
)

### Generating Services

### Generating Module File
_generate_module_nodejs(id_selector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/id_selector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(id_selector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(id_selector_generate_messages id_selector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_nodejs _id_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_nodejs _id_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(id_selector_gennodejs)
add_dependencies(id_selector_gennodejs id_selector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS id_selector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector
)
_generate_msg_py(id_selector
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg"
  "${MSG_I_FLAGS}"
  "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector
)

### Generating Services

### Generating Module File
_generate_module_py(id_selector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(id_selector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(id_selector_generate_messages id_selector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BoundingBox.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_py _id_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/vizzy/vizzy_ros_android_bridges/id_selector/msg/BBList.msg" NAME_WE)
add_dependencies(id_selector_generate_messages_py _id_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(id_selector_genpy)
add_dependencies(id_selector_genpy id_selector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS id_selector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/id_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/id_selector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(id_selector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(id_selector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/id_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/id_selector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(id_selector_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(id_selector_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/id_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/id_selector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(id_selector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(id_selector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/id_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/id_selector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(id_selector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(id_selector_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/id_selector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(id_selector_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(id_selector_generate_messages_py geometry_msgs_generate_messages_py)
endif()
