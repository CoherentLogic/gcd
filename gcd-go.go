package main

import "fmt"

func main() {
	fmt.Printf("GCD of 54 and 24 is %d\n", gcd(54, 24))
}

func gcd(a, b int) int {
	
	if(b == 0) {
		return a
	} else {
		return gcd(b, a % b)
	}
	
}
