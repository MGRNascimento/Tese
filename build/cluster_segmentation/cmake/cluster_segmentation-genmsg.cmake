# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cluster_segmentation: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icluster_segmentation:/home/miguel/catkin_ws/src/cluster_segmentation/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cluster_segmentation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_custom_target(_cluster_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cluster_segmentation" "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" "geometry_msgs/PoseStamped:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:shape_msgs/Mesh:cluster_segmentation/DetectedObject:shape_msgs/MeshTriangle:geometry_msgs/Pose:geometry_msgs/Quaternion:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_custom_target(_cluster_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cluster_segmentation" "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" "sensor_msgs/PointField:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_cluster_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cluster_segmentation" "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" "geometry_msgs/PoseStamped:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:shape_msgs/Mesh:geometry_msgs/Quaternion:shape_msgs/MeshTriangle:geometry_msgs/Pose:sensor_msgs/PointCloud2"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_cpp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_cpp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation
)

### Generating Services

### Generating Module File
_generate_module_cpp(cluster_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cluster_segmentation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cluster_segmentation_generate_messages cluster_segmentation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_cpp _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_cpp _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_cpp _cluster_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cluster_segmentation_gencpp)
add_dependencies(cluster_segmentation_gencpp cluster_segmentation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cluster_segmentation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_eus(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_eus(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation
)

### Generating Services

### Generating Module File
_generate_module_eus(cluster_segmentation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cluster_segmentation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cluster_segmentation_generate_messages cluster_segmentation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_eus _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_eus _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_eus _cluster_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cluster_segmentation_geneus)
add_dependencies(cluster_segmentation_geneus cluster_segmentation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cluster_segmentation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_lisp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_lisp(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation
)

### Generating Services

### Generating Module File
_generate_module_lisp(cluster_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cluster_segmentation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cluster_segmentation_generate_messages cluster_segmentation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_lisp _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_lisp _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_lisp _cluster_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cluster_segmentation_genlisp)
add_dependencies(cluster_segmentation_genlisp cluster_segmentation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cluster_segmentation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_nodejs(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_nodejs(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cluster_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cluster_segmentation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cluster_segmentation_generate_messages cluster_segmentation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_nodejs _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_nodejs _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_nodejs _cluster_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cluster_segmentation_gennodejs)
add_dependencies(cluster_segmentation_gennodejs cluster_segmentation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cluster_segmentation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_py(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation
)
_generate_msg_py(cluster_segmentation
  "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation
)

### Generating Services

### Generating Module File
_generate_module_py(cluster_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cluster_segmentation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cluster_segmentation_generate_messages cluster_segmentation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObjectsArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_py _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/SegmentedClustersArray.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_py _cluster_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguel/catkin_ws/src/cluster_segmentation/msg/DetectedObject.msg" NAME_WE)
add_dependencies(cluster_segmentation_generate_messages_py _cluster_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cluster_segmentation_genpy)
add_dependencies(cluster_segmentation_genpy cluster_segmentation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cluster_segmentation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cluster_segmentation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cluster_segmentation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cluster_segmentation_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET shape_msgs_generate_messages_cpp)
  add_dependencies(cluster_segmentation_generate_messages_cpp shape_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cluster_segmentation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cluster_segmentation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cluster_segmentation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cluster_segmentation_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET shape_msgs_generate_messages_eus)
  add_dependencies(cluster_segmentation_generate_messages_eus shape_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cluster_segmentation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cluster_segmentation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cluster_segmentation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cluster_segmentation_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET shape_msgs_generate_messages_lisp)
  add_dependencies(cluster_segmentation_generate_messages_lisp shape_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cluster_segmentation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cluster_segmentation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cluster_segmentation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cluster_segmentation_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET shape_msgs_generate_messages_nodejs)
  add_dependencies(cluster_segmentation_generate_messages_nodejs shape_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cluster_segmentation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cluster_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cluster_segmentation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cluster_segmentation_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET shape_msgs_generate_messages_py)
  add_dependencies(cluster_segmentation_generate_messages_py shape_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cluster_segmentation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
