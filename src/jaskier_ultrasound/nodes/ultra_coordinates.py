#!/usr/bin/env python

import rospy
import localization as lc
from geometry_msgs.msg import Point
from jaskier_msgs.msg import ultraTimeStamp

RX1_X, RX1_Y, RX1_Z = 0.085, 0.13, 0.0
RX2_X, RX2_Y, RX2_Z = 0.085, -0.13, 0.0
RX3_X, RX3_Y, RX3_Z = -0.085, 0.13, 0.0
RX4_X, RX4_Y, RX4_Z = -0.085, -0.13, 0.0
SPEED_SOUND = 343

class localisation:
    def __init__(self):
        self.rx1 = (RX1_X, RX1_Y, RX1_Z)
        self.rx2 = (RX2_X, RX2_Y, RX2_Z)
        self.rx3 = (RX3_X, RX3_Y, RX3_Z)
        self.rx4 = (RX4_X, RX4_Y, RX4_Z)
        self.p = lc.Project(mode="3D", solver="LSE")
        self.pub = rospy.Publisher("/ultrasound/coordinates", Point, queue_size=10)
        self.addAnchors()
        self.t, self.label = self.p.add_target()

    def addAnchors(self):
        self.p.add_anchor("rx1", self.rx1)
        self.p.add_anchor("rx2", self.rx2)
        self.p.add_anchor("rx3", self.rx3)
        self.p.add_anchor("rx4", self.rx4)

    def addMeasures(self):
        self.t.add_measure("rx1", 0)
        self.t.add_measure("rx2", 0)
        self.t.add_measure("rx3", 0)
        self.t.add_measure("rx4", 0)

    def callback(self, data):
        msg = Point()
        tx_time = data[0]
        self.t.measures[0] = ("rx1", self.distance(tx_time, data[1]))
        self.t.measures[1] = ("rx2", self.distance(tx_time, data[2]))
        self.t.measures[2] = ("rx3", self.distance(tx_time, data[3]))
        self.t.measures[3] = ("rx4", self.distance(tx_time, data[4]))
        self.p.solve()
        msg.x = self.t.loc.x
        msg.y = self.t.loc.y
        msg.z = self.t.loc.z
        self.pub.publish(msg)

    def distance(tx_time, rx_time):
        return ((rx_time.to_sec() - tx_time.to_sec()) * SPEED_OF_SOUND)

    def listener(self):
        rospy.init_node("ultrasound_localistion")
        rospy.Subscriber("/ultrasound/timestamps", ultraTimeStamp, self.callback)
        while not rospy.is_shutdown():
            rospy.spin()
        
def main():
    l = localisation()
    l.listener()

if __name__ == "__main__":
    main()
