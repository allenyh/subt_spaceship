
(cl:in-package :asdf)

(defsystem "spaceship_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AltitudeCmd" :depends-on ("_package_AltitudeCmd"))
    (:file "_package_AltitudeCmd" :depends-on ("_package"))
    (:file "MotorsCmd" :depends-on ("_package_MotorsCmd"))
    (:file "_package_MotorsCmd" :depends-on ("_package"))
    (:file "Twist2D" :depends-on ("_package_Twist2D"))
    (:file "_package_Twist2D" :depends-on ("_package"))
  ))