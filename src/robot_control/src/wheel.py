#!/usr/bin/env python

import rospy
import RPi.GPIO as GPIO
from time import sleep
from std_msgs.msg import UInt8

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

GPIO.setup(12, GPIO.OUT)
GPIO.setup(16, GPIO.OUT)
GPIO.setup(20, GPIO.OUT)
GPIO.setup(21, GPIO.OUT)

def left_wheel_forward():
    GPIO.output(12, GPIO.HIGH)
    GPIO.output(20, GPIO.LOW)
def left_wheel_back():
    GPIO.output(12, GPIO.LOW)
    GPIO.output(20, GPIO.HIGH)
def right_wheel_forward():
    GPIO.output(16, GPIO.LOW)
    GPIO.output(21, GPIO.HIGH)
def right_wheel_back():
    GPIO.output(16, GPIO.HIGH)
    GPIO.output(21, GPIO.LOW)
def forward():
    left_wheel_forward()
    right_wheel_forward()
    sleep(0.1)
def backward():
    left_wheel_back()
    right_wheel_back()
    sleep(0.1)
def right_turn():
    left_wheel_forward()
    right_wheel_back()
    sleep(0.1)
def left_turn():
    left_wheel_back()
    right_wheel_forward()
    sleep(0.1)
def stop():
    GPIO.output(12, GPIO.HIGH)
    GPIO.output(20, GPIO.HIGH)
    GPIO.output(16, GPIO.HIGH)
    GPIO.output(21, GPIO.HIGH)

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




