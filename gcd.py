#!/usr/bin/python

def gcd(a, b):

    if b == 0:
        return a
    else:
        return gcd(b, a % b)


print "GCD of 54 and 24 is ", gcd(54, 24)
