#!/usr/bin/env python
import rospy
import math

from spaceship_msgs.msg import Twist2D
from sensor_msgs.msg import Joy
from spaceship_msgs.msg import AltitudeCmd

from __builtin__ import True

class JoyMapper(object):
    def __init__(self):
        self.node_name = rospy.get_name()
        rospy.loginfo("[%s] Initializing " %(self.node_name))

        self.joy = None
        self.last_pub_msg = None

        # Setup Parameters
        self.v_gain = self.setupParam("~speed_gain", 0.41)
        self.omega_gain = self.setupParam("~steer_gain", 8.3)

	self.al_msg = AltitudeCmd()
        # Publications
        self.pub_vel_cmd = rospy.Publisher("/spaceship/vel_cmd", Twist2D, queue_size=1)
	self.pub_altitude_cmd = rospy.Publisher("/spaceship/altitude_cmd", AltitudeCmd, queue_size=1)
        # Subscriptions
        self.sub_joy_ = rospy.Subscriber("joy", Joy, self.cbJoy, queue_size=1)

    def setupParam(self,param_name,default_value):
        value = rospy.get_param(param_name,default_value)
        rospy.set_param(param_name,value) #Write to parameter server for transparancy
        rospy.loginfo("[%s] %s = %s " %(self.node_name,param_name,value))
        return value

    def cbJoy(self, joy_msg):
        self.joy = joy_msg
        self.publishControl()
        self.processButtons(joy_msg)

    def publishControl(self):
        car_cmd_msg = Twist2D()
        car_cmd_msg.v = self.joy.axes[1] * self.v_gain  #Left stick V-axis. Up is positive
        car_cmd_msg.omega = self.joy.axes[3] * self.omega_gain
        self.pub_vel_cmd.publish(car_cmd_msg)

# Button List index of joy.buttons array:
# 0: X
# 1: A 
# 2: B 
# 3: Y 
# 4: Left Back 
# 5: Right Back
# 6: Back
# 7: Start
# 8: Logitek 
# 9: Left joystick
# 10: Right joystick

# XXX: here we should use constants
    def processButtons(self, joy_msg):
        # Button A
        if (joy_msg.buttons[1] == 1):
            altitude_msg = AltitudeCmd()
	    altitude_msg.vel_up = -1

            self.pub_altitude_cmd.publish(altitude_msg) 

        # Y button
        elif (joy_msg.buttons[3] == 1):
            altitude_msg = AltitudeCmd()
            altitude_msg.vel_up = 1

            self.pub_altitude_cmd.publish(altitude_msg)  
	else:
	    altitude_msg = AltitudeCmd()
            altitude_msg.vel_up = 0

            self.pub_altitude_cmd.publish(altitude_msg)
        # Left back button
        '''elif (joy_msg.buttons[4] == 1):
            self.state_parallel_autonomy ^= True
            rospy.loginfo('state_parallel_autonomy = %s' % self.state_parallel_autonomy)
            parallel_autonomy_msg = BoolStamped()
            parallel_autonomy_msg.header.stamp = self.joy.header.stamp
            parallel_autonomy_msg.data = self.state_parallel_autonomy
            self.pub_parallel_autonomy.publish(parallel_autonomy_msg)

        # Right back button
        elif (joy_msg.buttons[5] == 1):
            self.state_verbose ^= True
            rospy.loginfo('state_verbose = %s' % self.state_verbose)
            rospy.set_param('line_detector_node/verbose', self.state_verbose) # bad - should be published for all to hear - not set a specific param

        # Back button
        elif (joy_msg.buttons[6] == 1):
            override_msg = BoolStamped()
            override_msg.header.stamp = self.joy.header.stamp
            override_msg.data = True
            rospy.loginfo('override_msg = True')
            self.pub_joy_override.publish(override_msg)
            
        # Start button
        elif (joy_msg.buttons[7] == 1):
            override_msg = BoolStamped()
            override_msg.header.stamp = self.joy.header.stamp
            override_msg.data = False
            rospy.loginfo('override_msg = False')
            self.pub_joy_override.publish(override_msg)

        # Power/middle button
        elif (joy_msg.buttons[8] == 1):
            e_stop_msg = BoolStamped()
            e_stop_msg.header.stamp = self.joy.header.stamp
            e_stop_msg.data = True # note that this is toggle (actual value doesn't matter)
            rospy.loginfo('E-stop message')
            self.pub_e_stop.publish(e_stop_msg)

        # Left joystick button
        elif (joy_msg.buttons[9] == 1):
            avoidance_msg = BoolStamped()
            rospy.loginfo('start lane following with avoidance mode')
            avoidance_msg.header.stamp = self.joy.header.stamp
            avoidance_msg.data = True
            self.pub_avoidance.publish(avoidance_msg) 

        else:
            some_active = sum(joy_msg.buttons) > 0
            if some_active:
                rospy.loginfo('No binding for joy_msg.buttons = %s' % str(joy_msg.buttons))'''


if __name__ == "__main__":
    rospy.init_node("joy_mapper",anonymous=False)
    joy_mapper = JoyMapper()
    rospy.spin()
