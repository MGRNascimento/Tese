;; Auto-generated. Do not edit!


(when (boundp 'obj_recognition::JointCommand)
  (if (not (find-package "OBJ_RECOGNITION"))
    (make-package "OBJ_RECOGNITION"))
  (shadow 'JointCommand (find-package "OBJ_RECOGNITION")))
(unless (find-package "OBJ_RECOGNITION::JOINTCOMMAND")
  (make-package "OBJ_RECOGNITION::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html


(intern "*POSITION_MODE*" (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(shadow '*POSITION_MODE* (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(defconstant obj_recognition::JointCommand::*POSITION_MODE* 1)
(intern "*VELOCITY_MODE*" (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(shadow '*VELOCITY_MODE* (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(defconstant obj_recognition::JointCommand::*VELOCITY_MODE* 2)
(intern "*TORQUE_MODE*" (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(shadow '*TORQUE_MODE* (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(defconstant obj_recognition::JointCommand::*TORQUE_MODE* 3)
(intern "*RAW_POSITION_MODE*" (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(shadow '*RAW_POSITION_MODE* (find-package "OBJ_RECOGNITION::JOINTCOMMAND"))
(defconstant obj_recognition::JointCommand::*RAW_POSITION_MODE* 4)
(defclass obj_recognition::JointCommand
  :super ros::object
  :slots (_mode _command _names ))

(defmethod obj_recognition::JointCommand
  (:init
   (&key
    ((:mode __mode) 0)
    ((:command __command) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _command __command)
   (setq _names __names)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; float64[] _command
    (* 8    (length _command)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; float64[] _command
     (write-long (length _command) s)
     (dotimes (i (length _command))
       (sys::poke (elt _command i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _command i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get obj_recognition::JointCommand :md5sum-) "19bfec8434dd568ab3c633d187c36f2e")
(setf (get obj_recognition::JointCommand :datatype-) "obj_recognition/JointCommand")
(setf (get obj_recognition::JointCommand :definition-)
      "int32 mode
float64[] command
string[]  names

int32 POSITION_MODE=1
int32 VELOCITY_MODE=2
int32 TORQUE_MODE=3
int32 RAW_POSITION_MODE=4
")



(provide :obj_recognition/JointCommand "19bfec8434dd568ab3c633d187c36f2e")


