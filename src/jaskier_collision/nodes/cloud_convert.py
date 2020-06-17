#!/usr/bin/env python

import rospy
import ros_numpy
import numpy as np
from scipy import spatial
from jaskier_msgs.msg import touchContact, tipCoords
from sensor_msgs.msg import PointCloud2

COLLISION_THRESH = 1.0

class cloud:
    def __init__(self):
        self.pub = rospy.Publisher("/contact", touchContact, queue_size=10)
        self.fingerCoords = np.zeros((5,3))

    def tipCallback(self, data):
        for i in range(len(data)):
            self.fingerCoords[i] = data.coords[i]

    def cloudCallback(self, cloud):
        xyz_array = ros_numpy.point_cloud2.pointcloud2_to_xyz_array(cloud)
        tree = spatial.KDTree(xyz_array.T)
        dist, idx = tree.query(self.fingerCoords, k=3, distance_upper_bound=COLLISION_THRESH)
        
        msg = touchContact()
        msg.thresh = COLLISION_THRESH

        for i in range(len(dist)):
            msg.distance[i] = np.min(dist[i])
            for j in range(len(dist[i])):
                if np.isinf(j):
                    msg.distance[i] = COLLISION_THRESH

        self.pub.publish(msg)

        #for i in range(len(fingerCoords)):
            
        #    x = fingerCoords[i,0]
        #    y = fingerCoords[i,1]
        #    z = fingerCoords[i,2]

        #    if len(tree.query_ball_point([x,y,z], SCALE_FACTOR))>0:
        #        print('Collision detected')
        #        break

    def listener(self):
        rospy.init_node("collision")
        rospy.Subscriber("/zedm/zed_node/point_cloud/cloud_registered", PointCloud2, self.cloudCallback)
        rospy.Subscriber("/tip_coords", tipCoords, self.tipCallback)
        while not rospy.is_shutdown():
            rospy.spin()        
        
def main():
    c = cloud()
    c.listener()

if __name__ == "__main__":
    main()
