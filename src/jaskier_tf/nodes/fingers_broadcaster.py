#! /usr/bin/env python

import rospy
import tf2_ros
from rospy import Time
from std_msgs.msg import Int32MultiArray, Int32 
from geometry_msgs.msg import TransformStamped as TFStamp

def fingerTransforms(data):
    b = tf2_ros.TransformBroadcaster()
    t = TFStamp()

    t.header.stamp = Time.now()
    t.header.frame_id = "blep"
    t.child_frame_id = "blip"
    t.transform.translation.x = x
    t.transform.translation.y = y
    t.transform.translation.z = z
    t.transform.rotation.x = x0
    t.transform.rotation.y = y0
    t.transform.rotation.z = z0
    t.transform.rotation.w = w0

    b.sendTransform(t)

def main():
    rospy.init_node("hand_broadcaster")
    rospy.Subscriber("/hand", Int32MultiArray, fingerTransform)
    rospy.spin()

if __name__ == '__main__':
    main()
