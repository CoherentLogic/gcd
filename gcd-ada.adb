with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure GCD is
   A, B, C, Result, Quit : Integer;
begin
   A := 54;
   B := 24;
   Result := 0;
   Quit := 0;
   
   if A < B then
      C := A;
      A := B;
      B := C;
   end if;
   
CalcLoop:
    loop
       C := A mod B;
       
       if C = 0 then
	  Quit := 1;
	  Result := B;
       end if;
       
       A := B;
       B := C;
       
       exit CalcLoop when Quit = 1;
    end loop CalcLoop;
    
    if Result = 0 then 
       Result := B;
    end if;
    
    Put("GCD of 54 and 24 is ");
    Put(Result);
    New_Line(1);
   
end GCD;
