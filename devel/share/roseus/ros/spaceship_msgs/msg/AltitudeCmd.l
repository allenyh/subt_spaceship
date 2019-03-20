;; Auto-generated. Do not edit!


(when (boundp 'spaceship_msgs::AltitudeCmd)
  (if (not (find-package "SPACESHIP_MSGS"))
    (make-package "SPACESHIP_MSGS"))
  (shadow 'AltitudeCmd (find-package "SPACESHIP_MSGS")))
(unless (find-package "SPACESHIP_MSGS::ALTITUDECMD")
  (make-package "SPACESHIP_MSGS::ALTITUDECMD"))

(in-package "ROS")
;;//! \htmlinclude AltitudeCmd.msg.html


(defclass spaceship_msgs::AltitudeCmd
  :super ros::object
  :slots (_vel_up ))

(defmethod spaceship_msgs::AltitudeCmd
  (:init
   (&key
    ((:vel_up __vel_up) 0.0)
    )
   (send-super :init)
   (setq _vel_up (float __vel_up))
   self)
  (:vel_up
   (&optional __vel_up)
   (if __vel_up (setq _vel_up __vel_up)) _vel_up)
  (:serialization-length
   ()
   (+
    ;; float32 _vel_up
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel_up
       (sys::poke _vel_up (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel_up
     (setq _vel_up (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spaceship_msgs::AltitudeCmd :md5sum-) "9e268374616d2c6125590afeae8cc068")
(setf (get spaceship_msgs::AltitudeCmd :datatype-) "spaceship_msgs/AltitudeCmd")
(setf (get spaceship_msgs::AltitudeCmd :definition-)
      "float32 vel_up

")



(provide :spaceship_msgs/AltitudeCmd "9e268374616d2c6125590afeae8cc068")


