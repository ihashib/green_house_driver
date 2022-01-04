import RPi.GPIO as GPIO
from time import sleep

import serial

uart = serial.Serial(port='/dev/ttyS0', baudrate=115200, timeout=1)


GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

adc_values = []
rx_crc = 0
crc = 0

while True:  
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
            #adc_values.clear()
        elif crc == rx_crc or uart.read() == 'E'.encode():
            uart.write('D'.encode())
            print("k")
        
    print(adc_values)
    adc_values.clear()
                    
    