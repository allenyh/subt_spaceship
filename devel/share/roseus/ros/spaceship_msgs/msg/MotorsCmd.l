;; Auto-generated. Do not edit!


(when (boundp 'spaceship_msgs::MotorsCmd)
  (if (not (find-package "SPACESHIP_MSGS"))
    (make-package "SPACESHIP_MSGS"))
  (shadow 'MotorsCmd (find-package "SPACESHIP_MSGS")))
(unless (find-package "SPACESHIP_MSGS::MOTORSCMD")
  (make-package "SPACESHIP_MSGS::MOTORSCMD"))

(in-package "ROS")
;;//! \htmlinclude MotorsCmd.msg.html


(defclass spaceship_msgs::MotorsCmd
  :super ros::object
  :slots (_vel_front_left _vel_front_right ))

(defmethod spaceship_msgs::MotorsCmd
  (:init
   (&key
    ((:vel_front_left __vel_front_left) 0.0)
    ((:vel_front_right __vel_front_right) 0.0)
    )
   (send-super :init)
   (setq _vel_front_left (float __vel_front_left))
   (setq _vel_front_right (float __vel_front_right))
   self)
  (:vel_front_left
   (&optional __vel_front_left)
   (if __vel_front_left (setq _vel_front_left __vel_front_left)) _vel_front_left)
  (:vel_front_right
   (&optional __vel_front_right)
   (if __vel_front_right (setq _vel_front_right __vel_front_right)) _vel_front_right)
  (:serialization-length
   ()
   (+
    ;; float32 _vel_front_left
    4
    ;; float32 _vel_front_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel_front_left
       (sys::poke _vel_front_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_front_right
       (sys::poke _vel_front_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel_front_left
     (setq _vel_front_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_front_right
     (setq _vel_front_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spaceship_msgs::MotorsCmd :md5sum-) "8c91d642ac64a555144121c4ff22ec24")
(setf (get spaceship_msgs::MotorsCmd :datatype-) "spaceship_msgs/MotorsCmd")
(setf (get spaceship_msgs::MotorsCmd :definition-)
      "float32 vel_front_left
float32 vel_front_right

")



(provide :spaceship_msgs/MotorsCmd "8c91d642ac64a555144121c4ff22ec24")


