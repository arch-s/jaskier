#!/usr/bin/env python

import rospy
import time
import sys
#import scipy
from scipy.spatial.transform import Rotation as R
from sensor_msgs.msg import JointState, Imu
from jaskier_msgs.msg import fingerADC
from std_msgs.msg import Header, Float64, Int32
from geometry_msgs.msg import Point

JOINT_MIN = -1.8
JOINT_MAX = 0
DIP_THRESH = -0.95
ULTRA_SCALE = 1

class jointPublisher:
    def __init__(self):
        self.pub = rospy.Publisher('joint_states', JointState, queue_size=10)
        self.msg = JointState()
        self.msg.header.stamp = 0
        self.msg.name = ["thumb_mcp", "index_mcp", "middle_mcp", "ring_mcp", "little_mcp", "thumb_ip", "index_pip", "index_dip", "middle_pip", "middle_dip", "ring_pip", "ring_dip", "little_pip", "little_dip", "imu_x", "imu_y", "imu_z", "ultra_x", "ultra_y", "ultra_z"]
        self.msg.position = [None]*len(self.msg.name)
        self.msg.velocity = []
        self.msg.effort = []

    def dip(self, x):
        '''
        calculates DIP positions based on MCP position
        '''
        if x > DIP_THRESH:
            return 0
        else:
            m = (JOINT_MIN - JOINT_MAX)/(JOINT_MIN - DIP_THRESH)
            return (m * (x - DIP_THRESH))

    def rescale(self, x, xmin, xmax, ymin, ymax):
        '''
        convertes a value 'x' in range(xmin, xmax) to y in range(ymin, ymax)
        '''
        temp = (x-xmin)/(xmax-xmin)
        return (temp*(ymin-ymax)+ymax)
    
    def fingerCallback(self, data):
        self.msg.header.stamp = rospy.Time.now()
        xmin = data.adcMin
        xmax = data.adcMax
        for i in range(len(data.adcVals)):
            self.msg.position[i] = self.rescale(data.adcVals[i], xmin, xmax, JOINT_MIN, JOINT_MAX)
        self.msg.position[5] = self.msg.position[0]
        self.msg.position[6] = self.msg.position[1]
        self.msg.position[7] = self.dip(self.msg.position[1])
        self.msg.position[8] = self.msg.position[2]
        self.msg.position[9] = self.dip(self.msg.position[2])
        self.msg.position[10] = self.msg.position[3]
        self.msg.position[11] = self.dip(self.msg.position[3])
        self.msg.position[12] = self.msg.position[4]
        self.msg.position[13] = self.dip(self.msg.position[4])
        self.pub.publish(self.msg)

    def imuCallback(self, data):
        self.msg.header.stamp = rospy.Time.now()
        rotation = R.from_quat([data.orientation.x, data.orientation.y, data.orientation.z, data.orientation.w])
        #rotation = scipy.spatial.transform.Rotation.from_quat(data.orientation)
        euler = rotation.as_euler('xyz')
        self.msg.position[14] = euler[0]
        self.msg.position[15] = euler[1]
        self.msg.position[16] = euler[2]
        self.pub.publish(self.msg)

    def ultraCallback(self, data):
        self.msg.header.stamp = rospy.Time.now()
        self.msg.position[17] = data.x*ULTRA_SCALE
        self.msg.position[18] = data.y*ULTRA_SCALE
        self.msg.position[19] = data.z*ULTRA_SCALE
        self.pub.publish(self.msg)

    def listener(self):
        rospy.init_node('joint_state_publisher')
        rospy.Subscriber("/fingers", fingerADC, self.fingerCallback)
        rospy.Subscriber("/imu/data", Imu, self.imuCallback)
        rospy.Subscriber("/ultrasound/coordinates", Point, self.ultraCallback)
        while not rospy.is_shutdown():
            rospy.spin()
       

def main():
    j = jointPublisher()
    j.listener()

if __name__ == "__main__":
    main()
