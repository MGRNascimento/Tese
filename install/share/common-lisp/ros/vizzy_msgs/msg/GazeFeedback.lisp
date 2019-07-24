; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude GazeFeedback.msg.html

(cl:defclass <GazeFeedback> (roslisp-msg-protocol:ros-message)
  ((state_reached
    :reader state_reached
    :initarg :state_reached
    :type cl:boolean
    :initform cl:nil)
   (fixation_point
    :reader fixation_point
    :initarg :fixation_point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (fixation_point_error
    :reader fixation_point_error
    :initarg :fixation_point_error
    :type cl:float
    :initform 0.0)
   (velocity_error
    :reader velocity_error
    :initarg :velocity_error
    :type cl:float
    :initform 0.0)
   (joint_states
    :reader joint_states
    :initarg :joint_states
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass GazeFeedback (<GazeFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<GazeFeedback> is deprecated: use vizzy_msgs-msg:GazeFeedback instead.")))

(cl:ensure-generic-function 'state_reached-val :lambda-list '(m))
(cl:defmethod state_reached-val ((m <GazeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:state_reached-val is deprecated.  Use vizzy_msgs-msg:state_reached instead.")
  (state_reached m))

(cl:ensure-generic-function 'fixation_point-val :lambda-list '(m))
(cl:defmethod fixation_point-val ((m <GazeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:fixation_point-val is deprecated.  Use vizzy_msgs-msg:fixation_point instead.")
  (fixation_point m))

(cl:ensure-generic-function 'fixation_point_error-val :lambda-list '(m))
(cl:defmethod fixation_point_error-val ((m <GazeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:fixation_point_error-val is deprecated.  Use vizzy_msgs-msg:fixation_point_error instead.")
  (fixation_point_error m))

(cl:ensure-generic-function 'velocity_error-val :lambda-list '(m))
(cl:defmethod velocity_error-val ((m <GazeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:velocity_error-val is deprecated.  Use vizzy_msgs-msg:velocity_error instead.")
  (velocity_error m))

(cl:ensure-generic-function 'joint_states-val :lambda-list '(m))
(cl:defmethod joint_states-val ((m <GazeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:joint_states-val is deprecated.  Use vizzy_msgs-msg:joint_states instead.")
  (joint_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeFeedback>) ostream)
  "Serializes a message object of type '<GazeFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state_reached) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fixation_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fixation_point_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_states) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeFeedback>) istream)
  "Deserializes a message object of type '<GazeFeedback>"
    (cl:setf (cl:slot-value msg 'state_reached) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'fixation_point_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_error) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_states) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeFeedback>)))
  "Returns string type for a message object of type '<GazeFeedback>"
  "vizzy_msgs/GazeFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeFeedback)))
  "Returns string type for a message object of type 'GazeFeedback"
  "vizzy_msgs/GazeFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeFeedback>)))
  "Returns md5sum for a message object of type '<GazeFeedback>"
  "c925c4396ef8f121f68659b242138ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeFeedback)))
  "Returns md5sum for a message object of type 'GazeFeedback"
  "c925c4396ef8f121f68659b242138ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeFeedback>)))
  "Returns full string definition for message of type '<GazeFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%bool state_reached~%geometry_msgs/PointStamped fixation_point~%float64 fixation_point_error~%float64 velocity_error~%sensor_msgs/JointState joint_states~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeFeedback)))
  "Returns full string definition for message of type 'GazeFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%bool state_reached~%geometry_msgs/PointStamped fixation_point~%float64 fixation_point_error~%float64 velocity_error~%sensor_msgs/JointState joint_states~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeFeedback>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fixation_point))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_states))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeFeedback
    (cl:cons ':state_reached (state_reached msg))
    (cl:cons ':fixation_point (fixation_point msg))
    (cl:cons ':fixation_point_error (fixation_point_error msg))
    (cl:cons ':velocity_error (velocity_error msg))
    (cl:cons ':joint_states (joint_states msg))
))
