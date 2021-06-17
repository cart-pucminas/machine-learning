#!/usr/bin/python

f = open('../FILES/Combo_Played.txt')
cards = dict()
for line in f:
    if line in cards:
	cards[line] += 1
    else:
	cards[line] = 1

for k,v in cards.iteritems():
    print'{ \"' + k[0:len(k)-1] + '\", 1, ' + str(v) + ', 0 },'
