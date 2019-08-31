#!/usr/bin/tclsh

proc gcd {a b} {
    
    if { $b == 0 } {
	return $a
    } else {
	return [gcd $b [expr $a % $b]]
    }	
}

set result [gcd 54 24]
puts "GCD of 54 and 24 is $result" 

