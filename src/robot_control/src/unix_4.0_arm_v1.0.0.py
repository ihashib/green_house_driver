#!/usr/bin/env python

import RPi.GPIO as GPIO
from time import sleep
import rospy
from std_msgs.msg import uint8 uint16
import serial

uart = serial.Serial(port='/dev/ttyS0', baudrate=115200, timeout=1)


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

#pwm variables
base_pwm =255
ac1_pwm = 255
ac2_pwm = 255
ac3_pwm = 255
wrist_pwm = 255
claw_pwm = 255

crc = base_pwm + ac1_pwm + ac2_pwm + ac3_pwm + wrist_pwm + claw_pwm

#monster 1 base
base_m1_a_cw = 4
base_m1_a_ccw = 26
#monster 1 actuator 1
ac1_m1_b_cw = 17
ac1_m1_b_ccw = 19
#monster 2 actuator 2
ac2_m2_a_cw = 6
ac2_m2_a_ccw = 9
#monster 2 actuator 3
ac3_m2_b_cw = 10
ac3_m2_b_ccw = 13
#monster 3 actuator wrist rolation
wrist_m3_a_cw = 22
wrist_m3_a_ccw = 11
#monster 3 actuator claw
claw_m3_b_cw = 27
claw_m3_b_ccw = 5
#GPIO setup
GPIO.setup(base_m1_a_cw, GPIO.OUT)
GPIO.setup(base_m1_a_ccw, GPIO.OUT)
GPIO.setup(ac1_m1_b_cw, GPIO.OUT)
GPIO.setup(ac1_m1_b_ccw, GPIO.OUT)
GPIO.setup(ac2_m2_a_cw, GPIO.OUT)
GPIO.setup(ac2_m2_a_ccw, GPIO.OUT)
GPIO.setup(ac3_m2_b_cw, GPIO.OUT)
GPIO.setup(ac3_m2_b_ccw, GPIO.OUT)
GPIO.setup(wrist_m3_a_cw, GPIO.OUT)
GPIO.setup(wrist_m3_a_ccw, GPIO.OUT)
GPIO.setup(claw_m3_b_cw, GPIO.OUT)
GPIO.setup(claw_m3_b_ccw, GPIO.OUT)

while True:
    while(uart.read() != 'K'.encode()):
        uart.write('S'.encode())
        #uart.write('|'.encode()) tobe applied
        uart.write(str(base_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(ac1_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(ac2_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(ac3_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(wrist_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(claw_pwm).encode())
        uart.write('|'.encode())
        uart.write(str(crc).encode())
        uart.write('|'.encode())
        uart.write('E'.encode())
        
    print("[PWM data sent]");
    

    #base rotate clockwise
    GPIO.output(base_m1_a_ccw, GPIO.HIGH)
    GPIO.output(base_m1_a_cw, GPIO.LOW)

    GPIO.output(ac1_m1_b_ccw, GPIO.HIGH)
    GPIO.output(ac1_m1_b_cw, GPIO.LOW)

    GPIO.output(ac2_m2_a_ccw, GPIO.HIGH)
    GPIO.output(ac2_m2_a_cw, GPIO.LOW)

    GPIO.output(ac3_m2_b_ccw, GPIO.HIGH)
    GPIO.output(ac3_m2_b_cw, GPIO.LOW)

    GPIO.output(wrist_m3_a_ccw, GPIO.LOW)
    GPIO.output(wrist_m3_a_cw, GPIO.HIGH)

    GPIO.output(claw_m3_b_ccw, GPIO.LOW)
    GPIO.output(claw_m3_b_cw, GPIO.HIGH)
    
    #ros parts
def callback(message):
    data_rcv = True
    
    rospy.loginfo(message.data)
    
    if message.data is 1:
        forward()
    elif message.data is 6:
        backward()
    elif message.data is 4:
        left_turn()
    elif message.data is 5:
        right_turn()
    elif message.data is 0:
        stop()
    

def listener():
    rospy.init_node("wheel_driver", anonymous = False)
    rospy.Subscriber("wheel/motion", UInt8, callback)
    rospy.spin()

data_rcv = False

if __name__ == '__main__':
    data_rcv = False
    stop()
    listener()





        
        



