
declare function gcd(a as integer, b as integer) as integer

print "GCD of 54 and 24 is "; gcd(54, 24)

function gcd(a as integer, b as integer) as integer

	 if b = 0 then
	    return a
	 else
	    return gcd(b, a mod b)
	 end if

end function
