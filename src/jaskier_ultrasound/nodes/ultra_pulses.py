#!/usr/bin/env python

import time
import sys
import RPi.GPIO as GPIO
import rospy
from jaskier_msgs.msg import ultraTimeStamp

PULSE_NUM = 10
SLEEP_DURATION = 0.008

# pin definitions
TX = 7
RX1 = 35
RX2 = 36
RX3 = 37
RX4 = 38

msg = ultraTimeStamp()
msg.stamp = [0]*5

def cleanGPIO():
    GPIO.cleanup()

def updateTimeStamp(index):
    msg.stamp[index] = rospy.Time.now()

def pulseGenerate(rate):
    pin_val = GPIO.HIGH
    tx_time = rospy.Time.now()
    msg.stamp = [tx_time]*5

    for x in range(PULSE_NUM*2):
        GPIO.output(TX, pin_val)
        pin_val = 1 - pin_val
        rate.sleep()

    GPIO.output(TX, GPIO.LOW)

def main():

    #setup pins
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(TX, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(RX1, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
    GPIO.setup(RX2, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
    GPIO.setup(RX3, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
    GPIO.setup(RX4, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

    #detect rising edge on rx pins and assign callbacks
    GPIO.add_event_detect(RX1, GPIO.RISING, callback=lambda x: updateTimeStamp(1))
    GPIO.add_event_detect(RX2, GPIO.RISING, callback=lambda x: updateTimeStamp(2))
    GPIO.add_event_detect(RX3, GPIO.RISING, callback=lambda x: updateTimeStamp(3))
    GPIO.add_event_detect(RX4, GPIO.RISING, callback=lambda x: updateTimeStamp(4))

    rospy.init_node("ultrasound_tx")
    rospy.on_shutdown(cleanGPIO)
    pub = rospy.Publisher("/ultrasound/timestamps", ultraTimeStamp, queue_size=10)
    ultra_rate = rospy.Rate(80000)
    main_rate = rospy.Rate(100)

    print("ultrasound transmitter node online")

    while not rospy.is_shutdown():
        pulseGenerate(ultra_rate)
        rospy.sleep(SLEEP_DURATION)
        pub.publish(msg)
        main_rate.sleep()

if __name__ == "__main__":
    main()
