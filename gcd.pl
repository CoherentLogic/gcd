#!/usr/bin/perl                                                                                                     
                                                                                                                    
sub gcd {                                                                                                           
    $a = $_[0];                                                                                                     
    $b = $_[1];                                                                                                     
                                                                                                                    
    if($b == 0) {                                                                                                   
        return $a;                                                                                                  
    }                                                                                                               
    else {                                                                                                          
        return gcd($b, $a % $b);                                                                                    
    }                                                                                                               
}                                                                                                                   
                                                                                                                    
print "GCD of 54 and 24 is ", gcd(54, 24);
