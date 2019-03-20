;; Auto-generated. Do not edit!


(when (boundp 'spaceship_msgs::Twist2D)
  (if (not (find-package "SPACESHIP_MSGS"))
    (make-package "SPACESHIP_MSGS"))
  (shadow 'Twist2D (find-package "SPACESHIP_MSGS")))
(unless (find-package "SPACESHIP_MSGS::TWIST2D")
  (make-package "SPACESHIP_MSGS::TWIST2D"))

(in-package "ROS")
;;//! \htmlinclude Twist2D.msg.html


(defclass spaceship_msgs::Twist2D
  :super ros::object
  :slots (_v _omega ))

(defmethod spaceship_msgs::Twist2D
  (:init
   (&key
    ((:v __v) 0.0)
    ((:omega __omega) 0.0)
    )
   (send-super :init)
   (setq _v (float __v))
   (setq _omega (float __omega))
   self)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:serialization-length
   ()
   (+
    ;; float32 _v
    4
    ;; float32 _omega
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega
     (setq _omega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spaceship_msgs::Twist2D :md5sum-) "83d908ae096ccc868297e71d8684d284")
(setf (get spaceship_msgs::Twist2D :datatype-) "spaceship_msgs/Twist2D")
(setf (get spaceship_msgs::Twist2D :definition-)
      "float32 v
float32 omega

")



(provide :spaceship_msgs/Twist2D "83d908ae096ccc868297e71d8684d284")


