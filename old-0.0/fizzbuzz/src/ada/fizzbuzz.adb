with Ada.Text_IO; use Ada.Text_IO;

procedure FizzBuzz is
   N : Integer;
begin
   N := 1;
   for N in Integer range 1 .. 50 loop
      if N mod 3 = 0 and N mod 5 = 0 then
         Put_Line ("fizz buzz");
      elsif N mod 3 = 0 then
         Put_Line ("fizz");
      elsif N mod 5 = 0 then
         Put_Line ("buzz");
      else
         Put_Line (Integer'Image (N));
      end if;
   end loop;
end FizzBuzz;