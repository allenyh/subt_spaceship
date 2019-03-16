#!/usr/bin/env python
from __future__ import division
import rospy
from spaceship_msgs.msg import MotorsCmd
import Adafruit_PCA9685
import time

class MotorsDriverNode(object):
    def __init__(self):
        self.node_name = rospy.get_name()
        rospy.loginfo("[%s] Initializing " %(self.node_name))

        self.motorhat = Adafruit_PCA9685.PCA9685()

        self.pwm_freq = 500
        self.motorhat.set_pwm_freq(self.pwm_freq)

        self.leftSpeed = 0
        self.leftDir = 0
        self.rightSpeed = 0
        self.rightDir = 0

        self.left_forward_esc = 0
        self.left_backward_esc = 1
        self.right_forward_esc = 2
        self.right_backward_esc = 3
        
	self.pauseTime = 1

        # Setup subscribers
        self.sub_topic = rospy.Subscriber("/spaceship/motors_cmd", MotorsCmd, self.cbMotorsCmd, queue_size=1)

    def set_pwm_pulsewidth(self, channel, pulsewidth):
	pulsewidth = (min(max(pulsewidth, 1000), 2000))
        pwmValue = int (4096 * pulsewidth/2000)
        self.motorhat.set_pwm(channel, 0, pwmValue)

    def setup(self, channel):
	self.motorhat.set_pwm(channel, 0, 4096)
	time.sleep(self.pauseTime)
	self.motorhat.set_pwm(channel, 0, 2048)
	time.sleep(self.pauseTime)

    def cbMotorsCmd(self,msg):
        self.leftSpeed = 1000 + 1000 * msg.vel_front_left
        self.rightSpeed = 1000 + 1000 *  msg.vel_front_right
#	print("[ left: ", self.leftSpeed, " right: ", self.rightSpeed, "]")	

        if self.leftSpeed < 0:
#	    print("left - backward")
            vl = abs(self.leftSpeed)
	    if self.leftDir != -1:
		self.set_pwm_pulsewidth(self.left_forward_esc, 0)
		time.sleep(pauseTime)
		self.setup(self.left_backward_esc)	
	    self.leftDir = -1

            self.set_pwm_pulsewidth(self.left_backward_esc, vl)
        else:
#	    print("left - forward")
	    if self.leftDir != 1:
                self.set_pwm_pulsewidth(self.left_backward_esc, 0)
		time.sleep(self.pauseTime)
                self.setup(self.left_forward_esc)
            self.leftDir = 1

            vl = abs(self.leftSpeed)
            self.set_pwm_pulsewidth(self.left_forward_esc, vl)

        if self.rightSpeed < 0:
#	    print("right - backward")
	    if self.rightDir != -1:
                self.set_pwm_pulsewidth(self.right_forward_esc, 0)
                time.sleep(self.pauseTime)
                self.setup(self.right_backward_esc)
            self.rightDir = -1

            vr = abs(self.rightSpeed)
            self.set_pwm_pulsewidth(self.right_backward_esc, vr)
        else:
#	    print("left - forward")
	    if self.rightDir != 1:
                self.set_pwm_pulsewidth(self.right_backward_esc, 0)
                time.sleep(self.pauseTime)
                self.setup(self.right_forward_esc)
            self.rightDir = 1

            vr = abs(self.rightSpeed)
            self.set_pwm_pulsewidth(self.right_forward_esc, vr)

    def on_shutdown(self):
        self.driver.setWheelsSpeed(left=0.0,right=0.0)
        rospy.loginfo("[%s] Shutting down."%(rospy.get_name()))

if __name__ == '__main__':
    rospy.init_node('motors_driver_node', anonymous=False)
    node = MotorsDriverNode()
    # Setup proper shutdown behavior
    rospy.on_shutdown(node.on_shutdown)
    # Keep it spinning to keep the node alive
    rospy.spin()
