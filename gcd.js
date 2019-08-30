console.log("GCD of 54 and 24 is %d", gcd(54, 24));

function gcd(a,b) {
    if(b === 0) {
	return a;
    }
    else {
	return gcd(b, a % b)
    }
}
