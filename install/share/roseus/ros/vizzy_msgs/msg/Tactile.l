;; Auto-generated. Do not edit!


(when (boundp 'vizzy_msgs::Tactile)
  (if (not (find-package "VIZZY_MSGS"))
    (make-package "VIZZY_MSGS"))
  (shadow 'Tactile (find-package "VIZZY_MSGS")))
(unless (find-package "VIZZY_MSGS::TACTILE")
  (make-package "VIZZY_MSGS::TACTILE"))

(in-package "ROS")
;;//! \htmlinclude Tactile.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vizzy_msgs::Tactile
  :super ros::object
  :slots (_header _sensorsArray ))

(defmethod vizzy_msgs::Tactile
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensorsArray __sensorsArray) (let (r) (dotimes (i 16) (push (instance vizzy_msgs::TacVector :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensorsArray __sensorsArray)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensorsArray
   (&rest __sensorsArray)
   (if (keywordp (car __sensorsArray))
       (send* _sensorsArray __sensorsArray)
     (progn
       (if __sensorsArray (setq _sensorsArray (car __sensorsArray)))
       _sensorsArray)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vizzy_msgs/TacVector[16] _sensorsArray
    (apply #'+ (send-all _sensorsArray :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vizzy_msgs/TacVector[16] _sensorsArray
     (dolist (elem _sensorsArray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vizzy_msgs/TacVector[16] _sensorsArray
   (dotimes (i 16)
     (send (elt _sensorsArray i) :deserialize buf ptr-) (incf ptr- (send (elt _sensorsArray i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get vizzy_msgs::Tactile :md5sum-) "c6f495229c1ca17ef38013481c00069b")
(setf (get vizzy_msgs::Tactile :datatype-) "vizzy_msgs/Tactile")
(setf (get vizzy_msgs::Tactile :definition-)
      "std_msgs/Header header
TacVector[16] sensorsArray

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
MSG: vizzy_msgs/TacVector
int16 x
int16 y
int16 z

")



(provide :vizzy_msgs/Tactile "c6f495229c1ca17ef38013481c00069b")


