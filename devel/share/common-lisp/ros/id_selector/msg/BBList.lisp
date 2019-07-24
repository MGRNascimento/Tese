; Auto-generated. Do not edit!


(cl:in-package id_selector-msg)


;//! \htmlinclude BBList.msg.html

(cl:defclass <BBList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bbVector
    :reader bbVector
    :initarg :bbVector
    :type (cl:vector id_selector-msg:BoundingBox)
   :initform (cl:make-array 0 :element-type 'id_selector-msg:BoundingBox :initial-element (cl:make-instance 'id_selector-msg:BoundingBox))))
)

(cl:defclass BBList (<BBList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BBList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BBList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name id_selector-msg:<BBList> is deprecated: use id_selector-msg:BBList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BBList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader id_selector-msg:header-val is deprecated.  Use id_selector-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bbVector-val :lambda-list '(m))
(cl:defmethod bbVector-val ((m <BBList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader id_selector-msg:bbVector-val is deprecated.  Use id_selector-msg:bbVector instead.")
  (bbVector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BBList>) ostream)
  "Serializes a message object of type '<BBList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbVector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bbVector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BBList>) istream)
  "Deserializes a message object of type '<BBList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbVector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbVector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'id_selector-msg:BoundingBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BBList>)))
  "Returns string type for a message object of type '<BBList>"
  "id_selector/BBList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BBList)))
  "Returns string type for a message object of type 'BBList"
  "id_selector/BBList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BBList>)))
  "Returns md5sum for a message object of type '<BBList>"
  "451051af5703a61c3d4949dd71734381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BBList)))
  "Returns md5sum for a message object of type 'BBList"
  "451051af5703a61c3d4949dd71734381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BBList>)))
  "Returns full string definition for message of type '<BBList>"
  (cl:format cl:nil "Header header~%BoundingBox[] bbVector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: id_selector/BoundingBox~%int32 id~%int32 x~%int32 y~%int32 width~%int32 height~%bool tracked~%geometry_msgs/Point person3dLocation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BBList)))
  "Returns full string definition for message of type 'BBList"
  (cl:format cl:nil "Header header~%BoundingBox[] bbVector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: id_selector/BoundingBox~%int32 id~%int32 x~%int32 y~%int32 width~%int32 height~%bool tracked~%geometry_msgs/Point person3dLocation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BBList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbVector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BBList>))
  "Converts a ROS message object to a list"
  (cl:list 'BBList
    (cl:cons ':header (header msg))
    (cl:cons ':bbVector (bbVector msg))
))
