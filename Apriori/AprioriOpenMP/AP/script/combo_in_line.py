#!/usr/bin/python

f = open('../FILES/Combo_Played_in_line.txt')

for line in f:
    print '\"'+line[0:len(line)-1]+'\",'
