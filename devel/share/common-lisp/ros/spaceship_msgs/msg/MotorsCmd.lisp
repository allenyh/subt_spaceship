; Auto-generated. Do not edit!


(cl:in-package spaceship_msgs-msg)


;//! \htmlinclude MotorsCmd.msg.html

(cl:defclass <MotorsCmd> (roslisp-msg-protocol:ros-message)
  ((vel_front_left
    :reader vel_front_left
    :initarg :vel_front_left
    :type cl:float
    :initform 0.0)
   (vel_front_right
    :reader vel_front_right
    :initarg :vel_front_right
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorsCmd (<MotorsCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorsCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorsCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spaceship_msgs-msg:<MotorsCmd> is deprecated: use spaceship_msgs-msg:MotorsCmd instead.")))

(cl:ensure-generic-function 'vel_front_left-val :lambda-list '(m))
(cl:defmethod vel_front_left-val ((m <MotorsCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spaceship_msgs-msg:vel_front_left-val is deprecated.  Use spaceship_msgs-msg:vel_front_left instead.")
  (vel_front_left m))

(cl:ensure-generic-function 'vel_front_right-val :lambda-list '(m))
(cl:defmethod vel_front_right-val ((m <MotorsCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spaceship_msgs-msg:vel_front_right-val is deprecated.  Use spaceship_msgs-msg:vel_front_right instead.")
  (vel_front_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorsCmd>) ostream)
  "Serializes a message object of type '<MotorsCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_front_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_front_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorsCmd>) istream)
  "Deserializes a message object of type '<MotorsCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_front_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_front_right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorsCmd>)))
  "Returns string type for a message object of type '<MotorsCmd>"
  "spaceship_msgs/MotorsCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorsCmd)))
  "Returns string type for a message object of type 'MotorsCmd"
  "spaceship_msgs/MotorsCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorsCmd>)))
  "Returns md5sum for a message object of type '<MotorsCmd>"
  "8c91d642ac64a555144121c4ff22ec24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorsCmd)))
  "Returns md5sum for a message object of type 'MotorsCmd"
  "8c91d642ac64a555144121c4ff22ec24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorsCmd>)))
  "Returns full string definition for message of type '<MotorsCmd>"
  (cl:format cl:nil "float32 vel_front_left~%float32 vel_front_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorsCmd)))
  "Returns full string definition for message of type 'MotorsCmd"
  (cl:format cl:nil "float32 vel_front_left~%float32 vel_front_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorsCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorsCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorsCmd
    (cl:cons ':vel_front_left (vel_front_left msg))
    (cl:cons ':vel_front_right (vel_front_right msg))
))
