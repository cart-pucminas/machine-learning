#!/usr/bin/python

f = open('APRIORI_DATA.txt','r')

combination = list()
size = list()

for line in f:
    if 'COMBINATIONS:' in line:
	combination.append(line)
    else:
	size.append(line)
print combination
print max(size)
