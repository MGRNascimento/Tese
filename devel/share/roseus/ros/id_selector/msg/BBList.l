;; Auto-generated. Do not edit!


(when (boundp 'id_selector::BBList)
  (if (not (find-package "ID_SELECTOR"))
    (make-package "ID_SELECTOR"))
  (shadow 'BBList (find-package "ID_SELECTOR")))
(unless (find-package "ID_SELECTOR::BBLIST")
  (make-package "ID_SELECTOR::BBLIST"))

(in-package "ROS")
;;//! \htmlinclude BBList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass id_selector::BBList
  :super ros::object
  :slots (_header _bbVector ))

(defmethod id_selector::BBList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bbVector __bbVector) (let (r) (dotimes (i 0) (push (instance id_selector::BoundingBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bbVector __bbVector)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bbVector
   (&rest __bbVector)
   (if (keywordp (car __bbVector))
       (send* _bbVector __bbVector)
     (progn
       (if __bbVector (setq _bbVector (car __bbVector)))
       _bbVector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; id_selector/BoundingBox[] _bbVector
    (apply #'+ (send-all _bbVector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; id_selector/BoundingBox[] _bbVector
     (write-long (length _bbVector) s)
     (dolist (elem _bbVector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; id_selector/BoundingBox[] _bbVector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbVector (let (r) (dotimes (i n) (push (instance id_selector::BoundingBox :init) r)) r))
     (dolist (elem- _bbVector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get id_selector::BBList :md5sum-) "451051af5703a61c3d4949dd71734381")
(setf (get id_selector::BBList :datatype-) "id_selector/BBList")
(setf (get id_selector::BBList :definition-)
      "Header header
BoundingBox[] bbVector

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
MSG: id_selector/BoundingBox
int32 id
int32 x
int32 y
int32 width
int32 height
bool tracked
geometry_msgs/Point person3dLocation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :id_selector/BBList "451051af5703a61c3d4949dd71734381")


