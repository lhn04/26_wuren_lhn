;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::TurtleSpeed)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'TurtleSpeed (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::TURTLESPEED")
  (make-package "TURTLE_CONTROL::TURTLESPEED"))

(in-package "ROS")
;;//! \htmlinclude TurtleSpeed.msg.html


(defclass turtle_control::TurtleSpeed
  :super ros::object
  :slots (_linear_speed _angular_speed ))

(defmethod turtle_control::TurtleSpeed
  (:init
   (&key
    ((:linear_speed __linear_speed) 0.0)
    ((:angular_speed __angular_speed) 0.0)
    )
   (send-super :init)
   (setq _linear_speed (float __linear_speed))
   (setq _angular_speed (float __angular_speed))
   self)
  (:linear_speed
   (&optional __linear_speed)
   (if __linear_speed (setq _linear_speed __linear_speed)) _linear_speed)
  (:angular_speed
   (&optional __angular_speed)
   (if __angular_speed (setq _angular_speed __angular_speed)) _angular_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _linear_speed
    4
    ;; float32 _angular_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear_speed
       (sys::poke _linear_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_speed
       (sys::poke _angular_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear_speed
     (setq _linear_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_speed
     (setq _angular_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtle_control::TurtleSpeed :md5sum-) "43db0e1accb8f076c0cf83cc7488c50c")
(setf (get turtle_control::TurtleSpeed :datatype-) "turtle_control/TurtleSpeed")
(setf (get turtle_control::TurtleSpeed :definition-)
      "float32 linear_speed
float32 angular_speed

")



(provide :turtle_control/TurtleSpeed "43db0e1accb8f076c0cf83cc7488c50c")


