; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude GazeActionGoal.msg.html

(cl:defclass <GazeActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type vizzy_msgs-msg:GazeGoal
    :initform (cl:make-instance 'vizzy_msgs-msg:GazeGoal)))
)

(cl:defclass GazeActionGoal (<GazeActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<GazeActionGoal> is deprecated: use vizzy_msgs-msg:GazeActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GazeActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:header-val is deprecated.  Use vizzy_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <GazeActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:goal_id-val is deprecated.  Use vizzy_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GazeActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:goal-val is deprecated.  Use vizzy_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeActionGoal>) ostream)
  "Serializes a message object of type '<GazeActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeActionGoal>) istream)
  "Deserializes a message object of type '<GazeActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeActionGoal>)))
  "Returns string type for a message object of type '<GazeActionGoal>"
  "vizzy_msgs/GazeActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeActionGoal)))
  "Returns string type for a message object of type 'GazeActionGoal"
  "vizzy_msgs/GazeActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeActionGoal>)))
  "Returns md5sum for a message object of type '<GazeActionGoal>"
  "f45751f14c205ed0f56b47af1a31b4a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeActionGoal)))
  "Returns md5sum for a message object of type 'GazeActionGoal"
  "f45751f14c205ed0f56b47af1a31b4a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeActionGoal>)))
  "Returns full string definition for message of type '<GazeActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%GazeGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: vizzy_msgs/GazeGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 FIXATION_POINT=0~%uint8 HOME=1             # POSITION ERROR SUPPRESSION~%uint8 JOINT_VELOCITIES=2 # VELOCITY SUPPRESSION~%uint8 type~%~%uint8 CARTESIAN=0~%uint8 JOINT=1~%uint8 mode  # ONLY CARTESIAN IS IMPLEMENTED~%~%~%geometry_msgs/PointStamped fixation_point~%~%float64 fixation_point_error_tolerance  # max allowed error in meters~%#float64 suppression_velocity # max allowed velocity in radians~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeActionGoal)))
  "Returns full string definition for message of type 'GazeActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%GazeGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: vizzy_msgs/GazeGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 FIXATION_POINT=0~%uint8 HOME=1             # POSITION ERROR SUPPRESSION~%uint8 JOINT_VELOCITIES=2 # VELOCITY SUPPRESSION~%uint8 type~%~%uint8 CARTESIAN=0~%uint8 JOINT=1~%uint8 mode  # ONLY CARTESIAN IS IMPLEMENTED~%~%~%geometry_msgs/PointStamped fixation_point~%~%float64 fixation_point_error_tolerance  # max allowed error in meters~%#float64 suppression_velocity # max allowed velocity in radians~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))