#!/usr/bin/env python

import rospy
from jaskier_msgs.msg import tipCoords
from tf import TransformListener

class transformer:
    def __init__(self):
        rospy.init_node("transformer")
        self.tf = TransformListener()
        self.pub = rospy.Publisher("/tip_coords", tipCoords, queue_size=10)
        self.msg = tipCoords()
        self.msg.thumb = [0, 0, 0]
        self.msg.index = [0, 0, 0]
        self.msg.middle = [0, 0, 0]
        self.msg.ring = [0, 0, 0]
        self.msg.little = [0, 0, 0]

    def getCoords(self, finger):
        if self.tf.frameExists("/base_link") and self.tf.frameExists(finger):
            t = self.tf.getLatestCommonTime("/base_link", finger)
            position, quaternion = self.tf.lookupTransform("/base_link", finger, t)
            return position

    def listener(self):
        r = rospy.Rate(50)
        while not rospy.is_shutdown():
            self.msg.thumb = self.getCoords("/thumb_distal")
            self.msg.index = self.getCoords("/index_distal")
            self.msg.middle = self.getCoords("/middle_distal")
            self.msg.ring = self.getCoords("/ring_distal")
            self.msg.little = self.getCoords("/little_distal")
            self.pub.publish(self.msg)
            r.sleep()

def main():
    transform = transformer()
    transform.listener()

if __name__ == "__main__":
    main()
