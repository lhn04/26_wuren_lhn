
(cl:in-package :asdf)

(defsystem "turtle_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtleSpeed" :depends-on ("_package_TurtleSpeed"))
    (:file "_package_TurtleSpeed" :depends-on ("_package"))
  ))