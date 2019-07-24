;; Auto-generated. Do not edit!


(when (boundp 'id_selector::BoundingBox)
  (if (not (find-package "ID_SELECTOR"))
    (make-package "ID_SELECTOR"))
  (shadow 'BoundingBox (find-package "ID_SELECTOR")))
(unless (find-package "ID_SELECTOR::BOUNDINGBOX")
  (make-package "ID_SELECTOR::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass id_selector::BoundingBox
  :super ros::object
  :slots (_id _x _y _width _height _tracked _person3dLocation ))

(defmethod id_selector::BoundingBox
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:tracked __tracked) nil)
    ((:person3dLocation __person3dLocation) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _tracked __tracked)
   (setq _person3dLocation __person3dLocation)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:tracked
   (&optional __tracked)
   (if __tracked (setq _tracked __tracked)) _tracked)
  (:person3dLocation
   (&rest __person3dLocation)
   (if (keywordp (car __person3dLocation))
       (send* _person3dLocation __person3dLocation)
     (progn
       (if __person3dLocation (setq _person3dLocation (car __person3dLocation)))
       _person3dLocation)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; bool _tracked
    1
    ;; geometry_msgs/Point _person3dLocation
    (send _person3dLocation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; bool _tracked
       (if _tracked (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _person3dLocation
       (send _person3dLocation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _tracked
     (setq _tracked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _person3dLocation
     (send _person3dLocation :deserialize buf ptr-) (incf ptr- (send _person3dLocation :serialization-length))
   ;;
   self)
  )

(setf (get id_selector::BoundingBox :md5sum-) "10e5b2361740386e88e5a80aa25a88f8")
(setf (get id_selector::BoundingBox :datatype-) "id_selector/BoundingBox")
(setf (get id_selector::BoundingBox :definition-)
      "int32 id
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



(provide :id_selector/BoundingBox "10e5b2361740386e88e5a80aa25a88f8")


