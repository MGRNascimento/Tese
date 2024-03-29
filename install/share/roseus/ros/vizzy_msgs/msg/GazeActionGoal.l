;; Auto-generated. Do not edit!


(when (boundp 'vizzy_msgs::GazeActionGoal)
  (if (not (find-package "VIZZY_MSGS"))
    (make-package "VIZZY_MSGS"))
  (shadow 'GazeActionGoal (find-package "VIZZY_MSGS")))
(unless (find-package "VIZZY_MSGS::GAZEACTIONGOAL")
  (make-package "VIZZY_MSGS::GAZEACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude GazeActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vizzy_msgs::GazeActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod vizzy_msgs::GazeActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance vizzy_msgs::GazeGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; vizzy_msgs/GazeGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; vizzy_msgs/GazeGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; vizzy_msgs/GazeGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get vizzy_msgs::GazeActionGoal :md5sum-) "f45751f14c205ed0f56b47af1a31b4a4")
(setf (get vizzy_msgs::GazeActionGoal :datatype-) "vizzy_msgs/GazeActionGoal")
(setf (get vizzy_msgs::GazeActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
GazeGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: vizzy_msgs/GazeGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
uint8 FIXATION_POINT=0
uint8 HOME=1             # POSITION ERROR SUPPRESSION
uint8 JOINT_VELOCITIES=2 # VELOCITY SUPPRESSION
uint8 type

uint8 CARTESIAN=0
uint8 JOINT=1
uint8 mode  # ONLY CARTESIAN IS IMPLEMENTED


geometry_msgs/PointStamped fixation_point

float64 fixation_point_error_tolerance  # max allowed error in meters
#float64 suppression_velocity # max allowed velocity in radians

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vizzy_msgs/GazeActionGoal "f45751f14c205ed0f56b47af1a31b4a4")


