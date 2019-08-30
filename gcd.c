#include <stdio.h>

int gcd(int, int);

main()
{
  printf("GCD of 54 and 24 is %d\n", gcd(54, 24));
}

int gcd(int a, int b)
{
  if(b == 0) {
    return a;
  }
  else {
    return gcd(b, a % b);
  }
}
