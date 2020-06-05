#!/usr/bin/env python


import sys
import rospy
import moveit_commander
from std_msgs.msg import Float64, JointState
from jaskier_msgs.msg import collision.msg
from moveit_msgs.msg import RobotState
from moveit_msgs.srv import GetStateValidityRequest, GetStateValidity

class collisionDetector:
    def __init__(self):
        rospy.Subscriber("joint_states", JointState, self.callback, queue_size=1)
        self.robot = moveit_commander.RobotCommander()
        self.scene = moveit_commander.PlanningSceneInterface()
        self.group = moveit_commander.MoveGroupCommander("hand")
        self.rs = RobotState()
        self.rs.joint_state.name = ["thumb_joint", "index_joint", "middle_joint", "ring_joint", "little_joint"]
        self.rs.joint_state.position = [0.0, 0.0, 0.0, 0.0, 0.0]
        
    def callback(self, msg):
        

def main():
    rospy.init_node("collision_detector")
    collider = collisionDetector()
    rospy.spin()

if __name__ == "__main__":
    main()
