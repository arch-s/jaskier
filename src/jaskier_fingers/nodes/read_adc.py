#!/usr/bin/env python

import time
import sys
import rospy
import board
import busio
import adafruit_ads1x15.ads1015 as ADC
from adafruit_ads1x15.analog_in import AnalogIn
from std_msgs.msg import Int32
from jaskier_msgs.msg import fingerADC

THUMB = 0
INDEX = 1
MIDDLE = 2
RING = 3
LITTLE = 4


def process_channel(channel, finger, msg):
    value = channel.value
    if value < msg.adcMin:
        msg.adcMin = value
    if value > msg.adcMax:
        msg.adcMax = value
    msg.adcVals[finger] = value

def main():    
    i2c = busio.I2C(board.SCL, board.SDA)
    adc = ADC.ADS1015(i2c)
    #adc_thumb = ADC.ADS1015(i2c) #TODO:change i2c address
    #thumb = AnalogIn(adc, ADC.P0)
    index = AnalogIn(adc, ADC.P0)
    middle = AnalogIn(adc, ADC.P1)
    ring = AnalogIn(adc, ADC.P2)
    little = AnalogIn(adc, ADC.P3)
    rospy.init_node("finger_adc")
    pub = rospy.Publisher("/fingers", fingerADC, queue_size=10)
    rate = rospy.Rate(100)

    msg = fingerADC()
    msg.adcVals = [0,0,0,0,0]
    msg.adcMin = 100000
    msg.adcMax = 0


    while not rospy.is_shutdown():
    #print("{:>5}\t{:>5.3f}".format(index.value, index.voltage))
        #process_channel(thumb, THUMB. msg)
        process_channel(index, INDEX, msg)
        process_channel(middle, MIDDLE, msg)
        process_channel(ring, RING, msg)
        process_channel(little, LITTLE, msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == "__main__":
    main()
