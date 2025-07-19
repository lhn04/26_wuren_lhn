; Auto-generated. Do not edit!


(cl:in-package turtle_control-msg)


;//! \htmlinclude TurtleSpeed.msg.html

(cl:defclass <TurtleSpeed> (roslisp-msg-protocol:ros-message)
  ((linear_speed
    :reader linear_speed
    :initarg :linear_speed
    :type cl:float
    :initform 0.0)
   (angular_speed
    :reader angular_speed
    :initarg :angular_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurtleSpeed (<TurtleSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-msg:<TurtleSpeed> is deprecated: use turtle_control-msg:TurtleSpeed instead.")))

(cl:ensure-generic-function 'linear_speed-val :lambda-list '(m))
(cl:defmethod linear_speed-val ((m <TurtleSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:linear_speed-val is deprecated.  Use turtle_control-msg:linear_speed instead.")
  (linear_speed m))

(cl:ensure-generic-function 'angular_speed-val :lambda-list '(m))
(cl:defmethod angular_speed-val ((m <TurtleSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:angular_speed-val is deprecated.  Use turtle_control-msg:angular_speed instead.")
  (angular_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleSpeed>) ostream)
  "Serializes a message object of type '<TurtleSpeed>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleSpeed>) istream)
  "Deserializes a message object of type '<TurtleSpeed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleSpeed>)))
  "Returns string type for a message object of type '<TurtleSpeed>"
  "turtle_control/TurtleSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleSpeed)))
  "Returns string type for a message object of type 'TurtleSpeed"
  "turtle_control/TurtleSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleSpeed>)))
  "Returns md5sum for a message object of type '<TurtleSpeed>"
  "43db0e1accb8f076c0cf83cc7488c50c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleSpeed)))
  "Returns md5sum for a message object of type 'TurtleSpeed"
  "43db0e1accb8f076c0cf83cc7488c50c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleSpeed>)))
  "Returns full string definition for message of type '<TurtleSpeed>"
  (cl:format cl:nil "float32 linear_speed~%float32 angular_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleSpeed)))
  "Returns full string definition for message of type 'TurtleSpeed"
  (cl:format cl:nil "float32 linear_speed~%float32 angular_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleSpeed>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleSpeed
    (cl:cons ':linear_speed (linear_speed msg))
    (cl:cons ':angular_speed (angular_speed msg))
))
