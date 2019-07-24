; Auto-generated. Do not edit!


(cl:in-package vizzy_msgs-msg)


;//! \htmlinclude Tactile.msg.html

(cl:defclass <Tactile> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensorsArray
    :reader sensorsArray
    :initarg :sensorsArray
    :type (cl:vector vizzy_msgs-msg:TacVector)
   :initform (cl:make-array 16 :element-type 'vizzy_msgs-msg:TacVector :initial-element (cl:make-instance 'vizzy_msgs-msg:TacVector))))
)

(cl:defclass Tactile (<Tactile>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tactile>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tactile)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vizzy_msgs-msg:<Tactile> is deprecated: use vizzy_msgs-msg:Tactile instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:header-val is deprecated.  Use vizzy_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensorsArray-val :lambda-list '(m))
(cl:defmethod sensorsArray-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vizzy_msgs-msg:sensorsArray-val is deprecated.  Use vizzy_msgs-msg:sensorsArray instead.")
  (sensorsArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tactile>) ostream)
  "Serializes a message object of type '<Tactile>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensorsArray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tactile>) istream)
  "Deserializes a message object of type '<Tactile>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'sensorsArray) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'sensorsArray)))
    (cl:dotimes (i 16)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vizzy_msgs-msg:TacVector))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tactile>)))
  "Returns string type for a message object of type '<Tactile>"
  "vizzy_msgs/Tactile")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tactile)))
  "Returns string type for a message object of type 'Tactile"
  "vizzy_msgs/Tactile")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tactile>)))
  "Returns md5sum for a message object of type '<Tactile>"
  "c6f495229c1ca17ef38013481c00069b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tactile)))
  "Returns md5sum for a message object of type 'Tactile"
  "c6f495229c1ca17ef38013481c00069b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tactile>)))
  "Returns full string definition for message of type '<Tactile>"
  (cl:format cl:nil "std_msgs/Header header~%TacVector[16] sensorsArray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vizzy_msgs/TacVector~%int16 x~%int16 y~%int16 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tactile)))
  "Returns full string definition for message of type 'Tactile"
  (cl:format cl:nil "std_msgs/Header header~%TacVector[16] sensorsArray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vizzy_msgs/TacVector~%int16 x~%int16 y~%int16 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tactile>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sensorsArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tactile>))
  "Converts a ROS message object to a list"
  (cl:list 'Tactile
    (cl:cons ':header (header msg))
    (cl:cons ':sensorsArray (sensorsArray msg))
))
