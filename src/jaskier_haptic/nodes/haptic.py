import time
import sys
import board
import busio
import adafruit_pca9685 as PCA
import rospy

from std_msgs.msg import String, Float64, Int32
from jaskier_msgs.msg import touchContact

def hapticCallback(haptic):
    

#-----------------INIT---------------

FREQ = 100
DUTY_MIN = 0x7BA6
DUTY_MAX = 0x9DB2
ADDR = 0x5f


class pwm:
    def __init__(self):
        self.freq = FREQ
        self.addr = ADDR
        self.duty_min = DUTY_MIN
        self.duty_max = DUTY_MAX
        self.contact = [0, 0, 0, 0, 0]
        self.duty = [0, 0, 0, 0, 0]
        self.i2c = busio.I2C(board.SCL, board.SDA)
        self.pca = PCA.PCA9685(self.i2c, address=self.addr)
        self.pca.frequency = self.freq
        self.fingers = self.pca.channels[0:4]

    def hapticCallback(self, data):
        for i in range(len(data.distance)):
            if i == data.thresh:
                self.fingers[i].duty_cycle = 0x0000
            else:
                self.fingers[i].duty_cycle = dutyCycle(data[i], self.duty_min, self.duty_max, data.thresh)

    def dutyCycle(self, value, duty_min, duty_max, thresh):
        m = (duty_max - duty_min)/(0 - thresh)
        return (m*value + duty_max)

    def listener(self):
        rospy.init_node("haptic")
        rospy.Subscriber("/contact", touchContact, hapticCallback)
        while not rospy.is_shutdown():
            rospy.spin()
        
def main():
    haptic = pwm()
    haptic.listener()

if __name__ == "__main__":
    main()
