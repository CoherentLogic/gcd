program GCD (Input, Output);

var a, b, c, result, quit : Integer;

begin

   a := 54;
   b := 24;
   result := 0;
   quit := 0;

   if a < b then
   begin
      c := a;
      a := b;
      b := c;
   end;

   repeat
      c := a mod b;

      if c = 0 then
      begin
	 quit := 1;
	 result := b;
      end;

      a := b;
      b := c;
   until quit = 1;

   if result = 0 then result := b;

   writeln('GCD of 54 and 24 is ', result);
   
end.
