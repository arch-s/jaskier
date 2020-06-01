#!/usr/bin/env python

import rospy
import time
import sys
from sensor_msgs.msg import JointState
from jaskier_msgs.msg import fingerADC
from std_msgs.msg import Header, Float64, Int32

JOINT_MIN = -1.8
JOINT_MAX = 0

def rescale(x, xmin, xmax, ymin, ymax):
    '''
    convertes a value 'x' in range(xmin, xmax) to y in range(ymin, ymax)
    '''
    temp = (x-xmin)/(xmax-xmin)
    return (temp*(ymin-ymax)+ymax)
    
def callback(data, publisher):
    msg = JointState()
    msg.name = ["thumb_joint", "index_joint", "middle_joint", "ring_joint", "little_joint"]
    msg.position = [None]*5
    msg.velocity = []
    msg.effort = []
    msg.header.stamp = rospy.Time.now()
    xmin = data.adcMin
    xmax = data.adcMax
    for i in range(len(data.adcVals)):
        msg.position[i] = rescale(data.adcVals[i], xmin, xmax, JOINT_MIN, JOINT_MAX)
    publisher.publish(msg)

def main():
    rospy.init_node('joint_state_publisher')
    pub = rospy.Publisher('joint_states', JointState, queue_size=10)
    rospy.Subscriber("/fingers", fingerADC, callback, pub)
    while not rospy.is_shutdown():
        rospy.spin()

if __name__ == "__main__":
    main()
