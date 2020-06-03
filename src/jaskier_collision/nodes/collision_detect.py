#!/usr/bin/env python

import rospy
import sys
from std_msgs.msg import Float64, JointState
from jaskier_msgs.msg import collision.msg
from moveit_msgs.msg import RobotState
from moveit_msgs.srv import GetStateValidityRequest, GetStateValidity

def main():
    rospy.init_node("collision_detector")
    rospy.spin()

if __name__ == "__main__":
    main()
