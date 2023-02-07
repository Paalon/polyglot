with Ada.Text_IO; use Ada.Text_IO;
procedure FizzBuzz is
   n : Integer;
begin
   n := 1;
   for n in Integer range 1 .. 50 loop
      if n mod 3 = 0 and n mod 5 = 0 then
         Put_Line ("fizz buzz");
      elsif n mod 3 = 0 then
         Put_Line ("fizz");
      elsif n mod 5 = 0 then
         Put_Line ("buzz");
      else
         Put_Line (Integer'Image(n));
      end if;
   end loop;
end FizzBuzz;