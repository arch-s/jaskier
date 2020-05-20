import FaBo9Axis_MPU9250 as Fabo
import time
import sys
import rospy
import math

from math import pi as PI
from std_msgs.msg import String, Float64
from sensor_msgs.msg import Imu
from sensor_msgs.msg import MagneticField as Mag

GYRO_SENSITIVITY_2000DPS = 0.070
GRAVITY_EARTH = 9.80665
DPS_TO_RADS = 0.017453293
MILIGAUSS_TO_TESLA = 10000000

def pitchCalc(x, y, z, roll):
    temp = y*math.sin(roll) + z*math.cos(roll)
    if (temp == 0):
        if (x > 0):
            return PI/2
        else:
            return -PI/2
    else:
        return math.atan(-x/temp)

def yawCalc(x, y, z, roll, pitch):
    i = z*math.sin(roll) - y*math.cos(roll)
    r = x*math.cos(pitch) + y*math.sin(pitch)*math.sin(roll) + z*math.sin(pitch)*math.cos(roll)

    return math.atan2(i, r)

def printMPU(accel, gyro, mag):

    print("---------HAND IMU-----------")
    print("ax = " + str(accel['x']))        
    print("ay = " + str(accel['y']))
    print("az = " + str(accel['z']))
    print("gx = " + str(gyro['x']))        
    print("gy = " + str(gyro['y']))
    print("gz = " + str(gyro['z']))
    print("mx = " + str(mag['x']))        
    print("my = " + str(mag['y']))
    print("mz = " + str(mag['z']))

    print()
    return

#------------MAIN------------

imu_hand = Fabo.MPU9250(bus=0, G_SCALE=Fabo.GFS_2000, A_SCALE=Fabo.AFS_16G, M_MODE=Fabo.AK8963_MODE_C100HZ)
  
rospy.init_node("imu_publisher")
imu_topic = rospy.Publisher("/imu/data_raw", Imu, queue_size=10)
mag_topic = rospy.Publisher("/imu/mag", Mag ,queue_size=10)
imu = Imu()
mag_msg = Mag()
imu.angular_velocity_covariance = (0.0025, 0, 0, 0, 0.0025, 0, 0, 0, 0.0025)
imu.linear_acceleration_covariance = (0.0025, 0, 0, 0, 0.0025, 0, 0, 0, 0.0025)
imu.orientation_covariance = (0.0025, 0, 0, 0, 0.0025, 0, 0, 0, 0.0025)
mag_msg.magnetic_field_covariance = (0.0025, 0, 0, 0, 0.0025, 0, 0, 0, 0.0025)

while True:

    accel = imu_hand.readAccel()
    gyro = imu_hand.readGyro()
    mag = imu_hand.readMagnet()

    #printMPU(accel, gyro, mag)

    roll = math.atan2(accel['y'], accel['z'])
    pitch = pitchCalc(accel['x'], accel['y'], accel['z'], roll)
    yaw = yawCalc(mag['x'], mag['y'], mag['z'], roll, pitch)

    #-----Quaternion-------

    imu.orientation.x = roll
    imu.orientation.y = pitch
    imu.orientation.z = yaw
    imu.orientation.w = 1

    #------Raw values-------

    imu.angular_velocity.x = gyro['x']*DPS_TO_RADS
    imu.angular_velocity.y = gyro['y']*DPS_TO_RADS
    imu.angular_velocity.z = gyro['z']*DPS_TO_RADS

    imu.linear_acceleration.x = accel['x']*GRAVITY_EARTH
    imu.linear_acceleration.y = accel['y']*GRAVITY_EARTH
    imu.linear_acceleration.z = accel['z']*GRAVITY_EARTH

    imu.header.stamp = rospy.Time.now()
    mag_msg.header.stamp = imu.header.stamp

    mag_msg.magnetic_field.x = mag['x']/1000000 
    mag_msg.magnetic_field.y = mag['y']/1000000
    mag_msg.magnetic_field.z = mag['z']/1000000

    #----publish to topics----

    imu_topic.publish(imu)
    mag_topic.publish(mag_msg)

    time.sleep(0.5)

