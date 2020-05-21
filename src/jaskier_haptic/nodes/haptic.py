import time
import sys
import board
import busio
import adafruit_pca9685 as PCA
import rospy

from std_msgs.msg import String, Float64, Int32

def hapticCallback(haptic):
    

#-----------------INIT---------------

FREQ = 100
DUTY = 0x4000
ADDR = 0x5f

pca = PCA.PCA9685(i2c, address=ADDR)
pca.frequency = FREQ
index = pca.channels[0]
index.duty_cycle = duty_cycle

class pwm:
    def __init__(self):
        self.freq = FREQ
        self.addr = ADDR
        self.contact = [0, 0, 0, 0, 0]
        self.duty = [0, 0, 0, 0, 0]
        self.i2c = busio.I2C(board.SCL, board.SDA)
        self.pca = PCA.PCA9685(self.i2c, address=self.addr)
        self.fingers = self.pca.channels[0:4]

    def hapticCallback(self, data):
        for i in range(len(data)):
            self.fingers[i].duty_cycle = dutyCycle(data[i])

    def dutyCycle(self, value):
        #TODO: calculate duty cycle from contact value
        pass

    def listener(self):
        rospy.init_node("haptic")
        rospy.Subscriber("/contact", Float64MultiArray, hapticCallback)
        rospy.spin()
        

def main():
    haptic = pwm()
    haptic.listener()

if __name__ == "__main__":
    main()
