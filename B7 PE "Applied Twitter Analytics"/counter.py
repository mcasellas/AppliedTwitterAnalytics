import numpy as np

arr = []
num = 96763 '''numero maxim'''
for i in range(num+1): 
    arr.append(0)

with open("rt.txt", 'r') as fRT:
    for line in fRT:
        x = int(line)
        arr[x] += 1
    for elem in arr:
        print(elem)