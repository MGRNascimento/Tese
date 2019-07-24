; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude CartesianGoal.msg.html

(cl:defclass <CartesianGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (end_effector_pose
    :reader end_effector_pose
    :initarg :end_effector_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (duration
    :reader duration
    :initarg :duration
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass CartesianGoal (<CartesianGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<CartesianGoal> is deprecated: use vizzy_msgs-msg:CartesianGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CartesianGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:type-val is deprecated.  Use vizzy_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'end_effector_pose-val :lambda-list '(m))
(cl:defmethod end_effector_pose-val ((m <CartesianGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:end_effector_pose-val is deprecated.  Use vizzy_msgs-msg:end_effector_pose instead.")
  (end_effector_pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CartesianGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:velocity-val is deprecated.  Use vizzy_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CartesianGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:duration-val is deprecated.  Use vizzy_msgs-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CartesianGoal>)))
    "Constants for message type '<CartesianGoal>"
  '((:CARTESIAN . 0)
    (:HOME . 1)
    (:VELOCITY . 2)
    (:GRAB . 3)
    (:RELEASE . 4)
    (:PREEMPT . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CartesianGoal)))
    "Constants for message type 'CartesianGoal"
  '((:CARTESIAN . 0)
    (:HOME . 1)
    (:VELOCITY . 2)
    (:GRAB . 3)
    (:RELEASE . 4)
    (:PREEMPT . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianGoal>) ostream)
  "Serializes a message object of type '<CartesianGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_effector_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'velocity))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'duration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianGoal>) istream)
  "Deserializes a message object of type '<CartesianGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_effector_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'duration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianGoal>)))
  "Returns string type for a message object of type '<CartesianGoal>"
  "vizzy_msgs/CartesianGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianGoal)))
  "Returns string type for a message object of type 'CartesianGoal"
  "vizzy_msgs/CartesianGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianGoal>)))
  "Returns md5sum for a message object of type '<CartesianGoal>"
  "f363fa97393b5c8280ca1eb3765f4c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianGoal)))
  "Returns md5sum for a message object of type 'CartesianGoal"
  "f363fa97393b5c8280ca1eb3765f4c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianGoal>)))
  "Returns full string definition for message of type '<CartesianGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 CARTESIAN=0~%uint8 HOME=1~%uint8 VELOCITY=2~%uint8 GRAB=3~%uint8 RELEASE=4~%uint8 PREEMPT=5~%uint8 type~%~%geometry_msgs/PoseStamped end_effector_pose~%std_msgs/Float32[] velocity~%std_msgs/Float32 duration~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianGoal)))
  "Returns full string definition for message of type 'CartesianGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%uint8 CARTESIAN=0~%uint8 HOME=1~%uint8 VELOCITY=2~%uint8 GRAB=3~%uint8 RELEASE=4~%uint8 PREEMPT=5~%uint8 type~%~%geometry_msgs/PoseStamped end_effector_pose~%std_msgs/Float32[] velocity~%std_msgs/Float32 duration~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_effector_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'duration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianGoal
    (cl:cons ':type (type msg))
    (cl:cons ':end_effector_pose (end_effector_pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':duration (duration msg))
))
