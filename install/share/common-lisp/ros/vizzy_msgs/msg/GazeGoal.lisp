; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude GazeGoal.msg.html

(cl:defclass <GazeGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (fixation_point
    :reader fixation_point
    :initarg :fixation_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (fixation_point_error_tolerance
    :reader fixation_point_error_tolerance
    :initarg :fixation_point_error_tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GazeGoal (<GazeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<GazeGoal> is deprecated: use vizzy_msgs-msg:GazeGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GazeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:type-val is deprecated.  Use vizzy_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GazeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:mode-val is deprecated.  Use vizzy_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'fixation_point-val :lambda-list '(m))
(cl:defmethod fixation_point-val ((m <GazeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:fixation_point-val is deprecated.  Use vizzy_msgs-msg:fixation_point instead.")
  (fixation_point m))

(cl:ensure-generic-function 'fixation_point_error_tolerance-val :lambda-list '(m))
(cl:defmethod fixation_point_error_tolerance-val ((m <GazeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:fixation_point_error_tolerance-val is deprecated.  Use vizzy_msgs-msg:fixation_point_error_tolerance instead.")
  (fixation_point_error_tolerance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GazeGoal>)))
    "Constants for message type '<GazeGoal>"
  '((:FIXATION_POINT . 0)
    (:HOME . 1)
    (:JOINT_VELOCITIES . 2)
    (:CARTESIAN . 0)
    (:JOINT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GazeGoal)))
    "Constants for message type 'GazeGoal"
  '((:FIXATION_POINT . 0)
    (:HOME . 1)
    (:JOINT_VELOCITIES . 2)
    (:CARTESIAN . 0)
    (:JOINT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeGoal>) ostream)
  "Serializes a message object of type '<GazeGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fixation_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fixation_point_error_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeGoal>) istream)
  "Deserializes a message object of type '<GazeGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fixation_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fixation_point_error_tolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeGoal>)))
  "Returns string type for a message object of type '<GazeGoal>"
  "vizzy_msgs/GazeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeGoal)))
  "Returns string type for a message object of type 'GazeGoal"
  "vizzy_msgs/GazeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeGoal>)))
  "Returns md5sum for a message object of type '<GazeGoal>"
  "a1b8bf39eac0adbf0be2f97a6f149676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeGoal)))
  "Returns md5sum for a message object of type 'GazeGoal"
  "a1b8bf39eac0adbf0be2f97a6f149676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeGoal>)))
  "Returns full string definition for message of type '<GazeGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 FIXATION_POINT=0~%uint8 HOME=1             # POSITION ERROR SUPPRESSION~%uint8 JOINT_VELOCITIES=2 # VELOCITY SUPPRESSION~%uint8 type~%~%uint8 CARTESIAN=0~%uint8 JOINT=1~%uint8 mode  # ONLY CARTESIAN IS IMPLEMENTED~%~%~%geometry_msgs/PointStamped fixation_point~%~%float64 fixation_point_error_tolerance  # max allowed error in meters~%#float64 suppression_velocity # max allowed velocity in radians~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeGoal)))
  "Returns full string definition for message of type 'GazeGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 FIXATION_POINT=0~%uint8 HOME=1             # POSITION ERROR SUPPRESSION~%uint8 JOINT_VELOCITIES=2 # VELOCITY SUPPRESSION~%uint8 type~%~%uint8 CARTESIAN=0~%uint8 JOINT=1~%uint8 mode  # ONLY CARTESIAN IS IMPLEMENTED~%~%~%geometry_msgs/PointStamped fixation_point~%~%float64 fixation_point_error_tolerance  # max allowed error in meters~%#float64 suppression_velocity # max allowed velocity in radians~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeGoal>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fixation_point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeGoal
    (cl:cons ':type (type msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':fixation_point (fixation_point msg))
    (cl:cons ':fixation_point_error_tolerance (fixation_point_error_tolerance msg))
))
