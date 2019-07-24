;; Auto-generated. Do not edit!


(when (boundp 'vizzy_msgs::CartesianResult)
  (if (not (find-package "VIZZY_MSGS"))
    (make-package "VIZZY_MSGS"))
  (shadow 'CartesianResult (find-package "VIZZY_MSGS")))
(unless (find-package "VIZZY_MSGS::CARTESIANRESULT")
  (make-package "VIZZY_MSGS::CARTESIANRESULT"))

(in-package "ROS")
;;//! \htmlinclude CartesianResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vizzy_msgs::CartesianResult
  :super ros::object
  :slots (_state_reached _end_effector_pose ))

(defmethod vizzy_msgs::CartesianResult
  (:init
   (&key
    ((:state_reached __state_reached) nil)
    ((:end_effector_pose __end_effector_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _state_reached __state_reached)
   (setq _end_effector_pose __end_effector_pose)
   self)
  (:state_reached
   (&optional __state_reached)
   (if __state_reached (setq _state_reached __state_reached)) _state_reached)
  (:end_effector_pose
   (&rest __end_effector_pose)
   (if (keywordp (car __end_effector_pose))
       (send* _end_effector_pose __end_effector_pose)
     (progn
       (if __end_effector_pose (setq _end_effector_pose (car __end_effector_pose)))
       _end_effector_pose)))
  (:serialization-length
   ()
   (+
    ;; bool _state_reached
    1
    ;; geometry_msgs/PoseStamped _end_effector_pose
    (send _end_effector_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state_reached
       (if _state_reached (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _end_effector_pose
       (send _end_effector_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state_reached
     (setq _state_reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _end_effector_pose
     (send _end_effector_pose :deserialize buf ptr-) (incf ptr- (send _end_effector_pose :serialization-length))
   ;;
   self)
  )

(setf (get vizzy_msgs::CartesianResult :md5sum-) "480f367d9a3455de8c5b570394393f40")
(setf (get vizzy_msgs::CartesianResult :datatype-) "vizzy_msgs/CartesianResult")
(setf (get vizzy_msgs::CartesianResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool state_reached
geometry_msgs/PoseStamped end_effector_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :vizzy_msgs/CartesianResult "480f367d9a3455de8c5b570394393f40")

