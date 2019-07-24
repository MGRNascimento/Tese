; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude CartesianResult.msg.html

(cl:defclass <CartesianResult> (roslisp-msg-protocol:ros-message)
  ((state_reached
    :reader state_reached
    :initarg :state_reached
    :type cl:boolean
    :initform cl:nil)
   (end_effector_pose
    :reader end_effector_pose
    :initarg :end_effector_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass CartesianResult (<CartesianResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<CartesianResult> is deprecated: use vizzy_msgs-msg:CartesianResult instead.")))

(cl:ensure-generic-function 'state_reached-val :lambda-list '(m))
(cl:defmethod state_reached-val ((m <CartesianResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:state_reached-val is deprecated.  Use vizzy_msgs-msg:state_reached instead.")
  (state_reached m))

(cl:ensure-generic-function 'end_effector_pose-val :lambda-list '(m))
(cl:defmethod end_effector_pose-val ((m <CartesianResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:end_effector_pose-val is deprecated.  Use vizzy_msgs-msg:end_effector_pose instead.")
  (end_effector_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianResult>) ostream)
  "Serializes a message object of type '<CartesianResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state_reached) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_effector_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianResult>) istream)
  "Deserializes a message object of type '<CartesianResult>"
    (cl:setf (cl:slot-value msg 'state_reached) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_effector_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianResult>)))
  "Returns string type for a message object of type '<CartesianResult>"
  "vizzy_msgs/CartesianResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianResult)))
  "Returns string type for a message object of type 'CartesianResult"
  "vizzy_msgs/CartesianResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianResult>)))
  "Returns md5sum for a message object of type '<CartesianResult>"
  "480f367d9a3455de8c5b570394393f40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianResult)))
  "Returns md5sum for a message object of type 'CartesianResult"
  "480f367d9a3455de8c5b570394393f40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianResult>)))
  "Returns full string definition for message of type '<CartesianResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool state_reached~%geometry_msgs/PoseStamped end_effector_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianResult)))
  "Returns full string definition for message of type 'CartesianResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool state_reached~%geometry_msgs/PoseStamped end_effector_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_effector_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianResult
    (cl:cons ':state_reached (state_reached msg))
    (cl:cons ':end_effector_pose (end_effector_pose msg))
))
