public class GCD {

    public static void main(String[] args) {

	System.out.printf("GCD of 54 and 24 is %d\n", gcd(54, 24));
	
    }

    public static int gcd(int a, int b) {

	if(b == 0) {
	    return a;
	}
	else {
	    return gcd(b, a % b);
	}
	
    }

}
