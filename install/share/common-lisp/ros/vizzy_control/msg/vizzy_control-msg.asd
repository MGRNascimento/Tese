
(cl:in-package :asdf)

(defsystem "vizzy_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motorsArray" :depends-on ("_package_motorsArray"))
    (:file "_package_motorsArray" :depends-on ("_package"))
  ))