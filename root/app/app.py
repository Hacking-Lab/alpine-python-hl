#!/usr/bin/python
import time

t = time.localtime()
current_time = time.strftime("%H:%M:%S", t)
print(current_time)

while True:
     print("success")
     time.sleep(60)
     t = time.localtime()
     current_time = time.strftime("%H:%M:%S", t)
     print(current_time)
