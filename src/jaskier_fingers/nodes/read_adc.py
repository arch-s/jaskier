import time
import sys
import board
import busio
import adafruit_ads1x15.ads1015 as ADC
from adafruit_ads1x15.analog_in import AnalogIn
from std_msgs.msg import Float64MultiArray

i2c = busio.I2C(board.SCL, board.SDA)

adc = ADC.ADS1015(i2c)
index = AnalogIn(adc, ADC.P0)

print("{:>5}\t{:>5}".format('raw', 'v'))

while True:
    print("{:>5}\t{:>5.3f}".format(index.value, index.voltage))
    time.sleep(0.5)
