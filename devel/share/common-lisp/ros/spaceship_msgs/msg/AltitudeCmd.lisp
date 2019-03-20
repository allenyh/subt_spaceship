; Auto-generated. Do not edit!


(cl:in-package spaceship_msgs-msg)


;//! \htmlinclude AltitudeCmd.msg.html

(cl:defclass <AltitudeCmd> (roslisp-msg-protocol:ros-message)
  ((vel_up
    :reader vel_up
    :initarg :vel_up
    :type cl:float
    :initform 0.0))
)

(cl:defclass AltitudeCmd (<AltitudeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AltitudeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AltitudeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spaceship_msgs-msg:<AltitudeCmd> is deprecated: use spaceship_msgs-msg:AltitudeCmd instead.")))

(cl:ensure-generic-function 'vel_up-val :lambda-list '(m))
(cl:defmethod vel_up-val ((m <AltitudeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spaceship_msgs-msg:vel_up-val is deprecated.  Use spaceship_msgs-msg:vel_up instead.")
  (vel_up m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AltitudeCmd>) ostream)
  "Serializes a message object of type '<AltitudeCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_up))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AltitudeCmd>) istream)
  "Deserializes a message object of type '<AltitudeCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_up) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AltitudeCmd>)))
  "Returns string type for a message object of type '<AltitudeCmd>"
  "spaceship_msgs/AltitudeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AltitudeCmd)))
  "Returns string type for a message object of type 'AltitudeCmd"
  "spaceship_msgs/AltitudeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AltitudeCmd>)))
  "Returns md5sum for a message object of type '<AltitudeCmd>"
  "9e268374616d2c6125590afeae8cc068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AltitudeCmd)))
  "Returns md5sum for a message object of type 'AltitudeCmd"
  "9e268374616d2c6125590afeae8cc068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AltitudeCmd>)))
  "Returns full string definition for message of type '<AltitudeCmd>"
  (cl:format cl:nil "float32 vel_up~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AltitudeCmd)))
  "Returns full string definition for message of type 'AltitudeCmd"
  (cl:format cl:nil "float32 vel_up~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AltitudeCmd>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AltitudeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'AltitudeCmd
    (cl:cons ':vel_up (vel_up msg))
))
