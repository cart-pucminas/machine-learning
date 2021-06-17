#!/usr/bin/python

f = open('../FILES/Combo_Played_in_line.txt', 'r')

for line in f:
    
    s = line[0:len(line)-1].split(',')
    a = set()
    b = ''
    for i in s:
	a.add(i)
    for j in sorted(a):
	b+=j+','
    print b[0:len(b)-1]
