import time
import sys
import board
import busio
import adafruit_ads1x15.ads1015 as ADC
from adafruit_ads1x15.analog_in import AnalogIn
from std_msgs.msg import Int32MultiArray, Int32

THUMB = 0
INDEX = 1
MIDDLE = 2
RING = 3
LITTLE = 4

i2c = busio.I2C(board.SCL, board.SDA)

adc = ADC.ADS1015(i2c)
index = AnalogIn(adc, ADC.P0)
rospy.init_node("finger_publisher")
finger_values = rospy.Publisher("/fingers/adc_values", Int32MultiArray, queue_size=10)
finger_min = rospy.Publisher("/fingers/adc_min", Int32, queue=10)
finger_max = rospy.Publisher("/fingers/adc_max", Int32, queue=10)

adc_values = [0,0,0,0,0]
adc_min = 100000
adc_max = 0

def process_channel(channel, finger):
    value = channel.value
    if value < adc_min:
        adc_min = value
        finger_min.publish(adc_min)
    if value > adc_max:
        adc_max = value
        finger_max.publish(adc_max)
    adc_values[index] = value


#print("{:>5}\t{:>5}".format('raw', 'v'))

while True:
    #print("{:>5}\t{:>5.3f}".format(index.value, index.voltage))
    process_channel(index, INDEX)
    finger_values.publish(adc_values)
    time.sleep(0.01)
