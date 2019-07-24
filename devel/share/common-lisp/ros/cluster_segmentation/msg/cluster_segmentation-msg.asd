
(cl:in-package :asdf)

(defsystem "cluster_segmentation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :shape_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectedObject" :depends-on ("_package_DetectedObject"))
    (:file "_package_DetectedObject" :depends-on ("_package"))
    (:file "DetectedObjectsArray" :depends-on ("_package_DetectedObjectsArray"))
    (:file "_package_DetectedObjectsArray" :depends-on ("_package"))
    (:file "SegmentedClustersArray" :depends-on ("_package_SegmentedClustersArray"))
    (:file "_package_SegmentedClustersArray" :depends-on ("_package"))
  ))