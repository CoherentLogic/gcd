
fn gcd(a: i32, b: i32) -> i32 {
   if b == 0 {
      return a;
   } else {
      return gcd(b, a % b);
   }
}

fn main() {
   println!("GCD of 54 and 24 is {}", gcd(54, 24));
}