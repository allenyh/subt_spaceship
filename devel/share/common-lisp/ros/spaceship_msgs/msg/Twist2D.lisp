; Auto-generated. Do not edit!


(cl:in-package spaceship_msgs-msg)


;//! \htmlinclude Twist2D.msg.html

(cl:defclass <Twist2D> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0))
)

(cl:defclass Twist2D (<Twist2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Twist2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Twist2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spaceship_msgs-msg:<Twist2D> is deprecated: use spaceship_msgs-msg:Twist2D instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Twist2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spaceship_msgs-msg:v-val is deprecated.  Use spaceship_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <Twist2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spaceship_msgs-msg:omega-val is deprecated.  Use spaceship_msgs-msg:omega instead.")
  (omega m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Twist2D>) ostream)
  "Serializes a message object of type '<Twist2D>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Twist2D>) istream)
  "Deserializes a message object of type '<Twist2D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Twist2D>)))
  "Returns string type for a message object of type '<Twist2D>"
  "spaceship_msgs/Twist2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Twist2D)))
  "Returns string type for a message object of type 'Twist2D"
  "spaceship_msgs/Twist2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Twist2D>)))
  "Returns md5sum for a message object of type '<Twist2D>"
  "83d908ae096ccc868297e71d8684d284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Twist2D)))
  "Returns md5sum for a message object of type 'Twist2D"
  "83d908ae096ccc868297e71d8684d284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Twist2D>)))
  "Returns full string definition for message of type '<Twist2D>"
  (cl:format cl:nil "float32 v~%float32 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Twist2D)))
  "Returns full string definition for message of type 'Twist2D"
  (cl:format cl:nil "float32 v~%float32 omega~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Twist2D>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Twist2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Twist2D
    (cl:cons ':v (v msg))
    (cl:cons ':omega (omega msg))
))
