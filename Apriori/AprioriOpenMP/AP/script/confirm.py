#!/usr/bin/python

import sys

def isRepeted( data ):
    resp = True

    if len(data) > 1:
	aux2 = list()
	for i in xrange(len(data)):
	    aux2.append(True)
	for i in xrange(len(data)):
	    for j in xrange(len(data)):
		aux2[i] = aux2[i] and (data[i] == data[j])

	for i in aux2:
	    resp = resp and i
    return resp


if len(sys.argv) == 2:
    f = open(sys.argv[1])
    
    data = list()

    for line in f:
	if not isRepeted(line[0:line.index('->')-1].split(',')):
	    data.append(line[0:line.index('->')-1].split(','))


    for i in data:
	s = i[0]
	for a in xrange(1, len(i)):
	    s += ','+ i[a]
	print s
else:
     print sys.argv[0] + " file"
