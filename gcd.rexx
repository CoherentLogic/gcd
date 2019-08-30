
say "GCD of 54 and 24 is " gcd(54, 24)

exit

gcd: procedure
     parse arg a, b

     if b = 0 then do
     	return a
     end
     else do
        return gcd(b, a // b)
     end
     