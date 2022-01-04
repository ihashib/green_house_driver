#!/usr/bin/env python

import RPi.GPIO as GPIO
from time import sleep
import rospy
from std_msgs.msg import String
import serial

uart = serial.Serial(port='/dev/ttyS0', baudrate=115200, timeout=1)


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)


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

def send_pwm_val(base_pwm, ac1_pwm, ac2_pwm, ac3_pwm, wrist_pwm, claw_pwm):
    crc = base_pwm + ac1_pwm + ac2_pwm + ac3_pwm + wrist_pwm + claw_pwm
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

def base_rotate_right():
    GPIO.output(base_m1_a_ccw, GPIO.HIGH)
    GPIO.output(base_m1_a_cw, GPIO.LOW)
def base_rotate_left():
    GPIO.output(base_m1_a_ccw, GPIO.LOW)
    GPIO.output(base_m1_a_cw, GPIO.HIGH)
def base_stop():
    GPIO.output(base_m1_a_ccw, GPIO.LOW)
    GPIO.output(base_m1_a_cw, GPIO.LOW)
    
def ac1_rotate_up():
    GPIO.output(ac1_m1_b_ccw, GPIO.HIGH)
    GPIO.output(ac1_m1_b_cw, GPIO.LOW)
def ac1_rotate_dowm():
    GPIO.output(ac1_m1_b_ccw, GPIO.LOW)
    GPIO.output(ac1_m1_b_cw, GPIO.HIGH)
def ac1_stop():
    GPIO.output(ac1_m1_b_ccw, GPIO.LOW)
    GPIO.output(ac1_m1_b_cw, GPIO.LOW)
    
def ac2_rotate_up():
    GPIO.output(ac2_m2_a_ccw, GPIO.HIGH)
    GPIO.output(ac2_m2_a_cw, GPIO.LOW)
def ac2_rotate_dowm():
    GPIO.output(ac2_m2_a_ccw, GPIO.LOW)
    GPIO.output(ac2_m2_a_cw, GPIO.HIGH)
def ac2_stop():
    GPIO.output(ac2_m2_a_ccw, GPIO.LOW)
    GPIO.output(ac2_m2_a_cw, GPIO.LOW)

def ac3_rotate_up():
    GPIO.output(ac3_m2_b_ccw, GPIO.HIGH)
    GPIO.output(ac3_m2_b_cw, GPIO.LOW)
def ac3_rotate_dowm():
    GPIO.output(ac3_m2_b_ccw, GPIO.LOW)
    GPIO.output(ac3_m2_b_cw, GPIO.HIGH)
def ac3_stop():
    GPIO.output(ac3_m2_b_ccw, GPIO.LOW)
    GPIO.output(ac3_m2_b_cw, GPIO.LOW)

def wrist_rotate_right():
    GPIO.output(wrist_m3_a_ccw, GPIO.LOW)
    GPIO.output(wrist_m3_a_cw, GPIO.HIGH)
def wrist_rotate_left():
    GPIO.output(wrist_m3_a_ccw, GPIO.HIGH)
    GPIO.output(wrist_m3_a_cw, GPIO.LOW)
def wrist_stop():
    GPIO.output(wrist_m3_a_ccw, GPIO.LOW)
    GPIO.output(wrist_m3_a_cw, GPIO.LOW)
    
def claw_open():
    GPIO.output(claw_m3_b_ccw, GPIO.LOW)
    GPIO.output(claw_m3_b_cw, GPIO.HIGH)
def claw_close():
    GPIO.output(claw_m3_b_ccw, GPIO.LOW)
    GPIO.output(claw_m3_b_cw, GPIO.LOW)   

def manipulator_stop():
    send_pwm_val(0, 0, 0, 0, 0,0)
    base_stop()
    ac1_stop()
    ac2_stop()
    ac3_stop()
    wrist_stop()
    claw_stop()
    
def get_adc_data():
    if uart.read() == 'S'.encode():
        uart_data = uart.read().decode()
        j = 0
        crc = 0
        for i in range(10):
            temp = ""
            while uart_data is not '|':
                temp = temp + str(uart_data)
                print(temp)               
                uart_data = uart.read().decode()
             
            if temp is not '' or i is 9:
                if(i is 9):
                    rx_crc = int(temp)
                else:
                    adc_values.insert(j, int(temp))
                    crc = crc + int(adc_values[j])
                    j = j + 1
                
            uart_data = uart.read().decode()
        print(crc)
        print(rx_crc)
        
        if crc != rx_crc:
            print("CRC Mismatch")
            adc_values.clear()
            return False
        elif crc == rx_crc or uart.read() == 'E'.encode():
            uart.write('D'.encode())
            print("k")
        
    print(adc_values)
    adc_values.clear()
    return True

#subscriber
def callback(message):
    rospy.loginfo(message.data)
    
    #base|base_pwm|ac1|ac1_pwm|ac2|ac2_pwm|ac3|ac3_pwm|wrist|wrist_pwm|claw|claw_pwm|all_stop
    data = int((message.data).split('|'))
    
    if data[12] is 0:
        send_pwm_val(data[1], data[3], data[5], data[7], data[9], data[11])
        
        if data[0] is 1 :
            base_rotate_right()
        elif data[0] is 2 :
            base_rotate_left()
        elif data[0] is 0 :
            base_stop()
            
        if data[2] is 1 :
            ac1_rotate_up()
        elif data[2] is 2 :
            ac1_rotate_dowm()
        elif data[2] is 0 :
            ac1_stop()
            
        if data[4] is 1 :
            ac2_rotate_up()
        elif data[4] is 2 :
            ac2_rotate_dowm()
        elif data[4] is 0 :
            ac2_stop()
            
        if data[6] is 1 :
            ac3_rotate_up()
        elif data[6] is 2 :
            ac3_rotate_dowm()
        elif data[6] is 0 :
            ac3_stop()
            
        if data[8] is 1 :
            wrist_rotate_right()
        elif data[8] is 2 :
            wrist_rotate_left()
        elif data[8] is 0 :
            wrist_stop()
            
        if data[10] is 1 :
            claw_open()
        elif data[10] is 2 :
            claw_close()
        elif data[10] is 0 :
            claw_stop()
            
    elif data[12] is 1:
        manipulator_stop()

def listener():
    rospy.Subscriber("manipulator/control", string, callback)
    rospy.spinOnce()
    
#publisher
def talker(adc_str):
    pub = rospy.Publisher('manipulator/adc', String, queue_size=10)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        adc_data = ros_packet(adc_str)
        rospy.loginfo(adc_data)
        pub.publish(adc_data)
        rate.sleep()

def ros_packet(adc_values):
    adc_str_int = [str(int) for int in adc_values]
    adc_str = "|".join(adc_str_int)
    
    return adc_str


if __name__ == '__main__':
    adc_values = []
    rx_crc = 0
    crc = 0
    manipulator_stop()
    rospy.init_node("manipulator_driver", anonymous = False)
    while True:
        listener()
        sleep(0.1)
        if get_adc_data():
            talker(adc_values)
        





        
        



