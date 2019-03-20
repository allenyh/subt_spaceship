#!/usr/bin/env python
from __future__ import division
import rospy
from spaceship_msgs.msg import MotorsCmd
from spaceship_msgs.msg import AltitudeCmd
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
        
	self.left_up_esc = 6
	self.right_up_esc = 8
	self.left_down_esc = 7
        self.right_down_esc = 9

	self.block = False

	self.throttle = 0
	self.throttle_dir = 0

	self.pauseTime = 0.02

        # Setup subscribers
        self.sub_topic = rospy.Subscriber("/spaceship/motors_cmd", MotorsCmd, self.cbMotorsCmd, queue_size=1)
	self.sub_altitude = rospy.Subscriber("/spaceship/altitude_cmd", AltitudeCmd, self.cdAltitudeCmd, queue_size=1)

    def set_pwm_pulsewidth(self, channel, pulsewidth):
	pulsewidth = (min(max(pulsewidth, 1000), 2000))
        pwmValue = int (4096 * pulsewidth/2000)
        self.motorhat.set_pwm(channel, 0, pwmValue)

    def setup(self, channel):
	self.motorhat.set_pwm(channel, 0, 4096)
	time.sleep(self.pauseTime)
	self.motorhat.set_pwm(channel, 0, 2048)
	time.sleep(self.pauseTime)

    def cdAltitudeCmd(self, msg):
	if self.block == False:
	    self.block = True

	direction = msg.vel_up
	new_throttle = int(self.throttle + 10 * direction)
	
	print("throttle: ", new_throttle, "last: ", self.throttle)
	#if new_throttle == self.throttle:
	    
	#if new_throttle == 0:
	 #   v = 0

	if new_throttle > 0:
	    v = abs(new_throttle) + 1200
	    if self.throttle <= 0:
		self.set_pwm_pulsewidth(self.left_down_esc, 0)
		self.set_pwm_pulsewidth(self.right_down_esc, 0)
		self.setup(self.left_up_esc)
		self.setup(self.right_up_esc)
		
	    self.set_pwm_pulsewidth(self.left_up_esc, v)
	    self.set_pwm_pulsewidth(self.right_up_esc, v)

	elif new_throttle < 0:
	    v = abs(new_throttle) + 1200

	    if self.throttle >= 0:
                self.set_pwm_pulsewidth(self.left_up_esc, 0)
                self.set_pwm_pulsewidth(self.right_up_esc, 0)
                self.setup(self.left_down_esc)
                self.setup(self.right_down_esc)
		
            self.set_pwm_pulsewidth(self.left_down_esc, v)
            self.set_pwm_pulsewidth(self.right_down_esc, v)
	else:
	    self.set_pwm_pulsewidth(self.left_up_esc, 0)
            self.set_pwm_pulsewidth(self.right_up_esc, 0)
	    self.set_pwm_pulsewidth(self.left_down_esc, 0)
            self.set_pwm_pulsewidth(self.right_down_esc, 0)


	self.block = False
	self.throttle = new_throttle

    def cbMotorsCmd(self,msg):
        self.leftSpeed = 700 * msg.vel_front_left
        self.rightSpeed = 700 *  msg.vel_front_right
#	print("[ left: ", self.leftSpeed, " right: ", self.rightSpeed, "]")	
	vr = 0
	vl = 0

        if self.leftSpeed < 0:
#	    print("left - backward")
            vl = abs(self.leftSpeed) + 1300
	    if self.leftDir != -1:
		self.set_pwm_pulsewidth(self.left_forward_esc, 0)
		time.sleep(self.pauseTime)
		self.setup(self.left_backward_esc)	
	    self.leftDir = -1

            self.set_pwm_pulsewidth(self.left_backward_esc, vl)
        elif self.leftSpeed >0:
#	    print("left - forward")
	    if self.leftDir != 1:
                self.set_pwm_pulsewidth(self.left_backward_esc, 0)
		time.sleep(self.pauseTime)
                self.setup(self.left_forward_esc)
            self.leftDir = 1

            vl = abs(self.leftSpeed) + 1300
            self.set_pwm_pulsewidth(self.left_forward_esc, vl)
	else:
	    self.leftDir = 0
	    self.set_pwm_pulsewidth(self.left_backward_esc, 0)
	    self.set_pwm_pulsewidth(self.left_forward_esc, 0)


        if self.rightSpeed < 0:
#	    print("right - backward")
	    if self.rightDir != -1:
                self.set_pwm_pulsewidth(self.right_forward_esc, 0)
                time.sleep(self.pauseTime)
                self.setup(self.right_backward_esc)
            self.rightDir = -1

            vr = abs(self.rightSpeed) + 1300
            self.set_pwm_pulsewidth(self.right_backward_esc, vr)
        elif self.rightSpeed > 0:
#	    print("left - forward")
	    if self.rightDir != 1:
                self.set_pwm_pulsewidth(self.right_backward_esc, 0)
                time.sleep(self.pauseTime)
                self.setup(self.right_forward_esc)
            self.rightDir = 1

            vr = abs(self.rightSpeed) + 1300
            self.set_pwm_pulsewidth(self.right_forward_esc, vr)
	else:
            self.rightDir = 0
            self.set_pwm_pulsewidth(self.right_backward_esc, 0)
            self.set_pwm_pulsewidth(self.right_forward_esc, 0)

	print("[ left: ", vl, " , right: ", vr)

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
