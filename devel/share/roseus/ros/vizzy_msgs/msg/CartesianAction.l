;; Auto-generated. Do not edit!


(when (boundp 'vizzy_msgs::CartesianAction)
  (if (not (find-package "VIZZY_MSGS"))
    (make-package "VIZZY_MSGS"))
  (shadow 'CartesianAction (find-package "VIZZY_MSGS")))
(unless (find-package "VIZZY_MSGS::CARTESIANACTION")
  (make-package "VIZZY_MSGS::CARTESIANACTION"))

(in-package "ROS")
;;//! \htmlinclude CartesianAction.msg.html


(defclass vizzy_msgs::CartesianAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod vizzy_msgs::CartesianAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance vizzy_msgs::CartesianActionGoal :init))
    ((:action_result __action_result) (instance vizzy_msgs::CartesianActionResult :init))
    ((:action_feedback __action_feedback) (instance vizzy_msgs::CartesianActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; vizzy_msgs/CartesianActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; vizzy_msgs/CartesianActionResult _action_result
    (send _action_result :serialization-length)
    ;; vizzy_msgs/CartesianActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vizzy_msgs/CartesianActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; vizzy_msgs/CartesianActionResult _action_result
       (send _action_result :serialize s)
     ;; vizzy_msgs/CartesianActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vizzy_msgs/CartesianActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; vizzy_msgs/CartesianActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; vizzy_msgs/CartesianActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get vizzy_msgs::CartesianAction :md5sum-) "52cbc785891802059e6df9e86c34f355")
(setf (get vizzy_msgs::CartesianAction :datatype-) "vizzy_msgs/CartesianAction")
(setf (get vizzy_msgs::CartesianAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

CartesianActionGoal action_goal
CartesianActionResult action_result
CartesianActionFeedback action_feedback

================================================================================
MSG: vizzy_msgs/CartesianActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
CartesianGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: vizzy_msgs/CartesianGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
uint8 CARTESIAN=0
uint8 HOME=1
uint8 VELOCITY=2
uint8 GRAB=3
uint8 RELEASE=4
uint8 PREEMPT=5
uint8 type

geometry_msgs/PoseStamped end_effector_pose
std_msgs/Float32[] velocity
std_msgs/Float32 duration

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: vizzy_msgs/CartesianActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
CartesianResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: vizzy_msgs/CartesianResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool state_reached
geometry_msgs/PoseStamped end_effector_pose

================================================================================
MSG: vizzy_msgs/CartesianActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
CartesianFeedback feedback

================================================================================
MSG: vizzy_msgs/CartesianFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
geometry_msgs/PoseStamped current_e_eff_pose



")



(provide :vizzy_msgs/CartesianAction "52cbc785891802059e6df9e86c34f355")

