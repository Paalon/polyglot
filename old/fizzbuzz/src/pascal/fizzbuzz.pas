program fizzbuzz;
type
  range = 1..50;
var
  n : range;
begin
  for n := low(range) to high(range) do
    if (n mod 3 = 0) and (n mod 5 = 0) then
      writeln('fizz buzz')
    else if n mod 3 = 0 then
      writeln('fizz')
    else if n mod 5 = 0 then
      writeln('buzz')
    else
      writeln(n)
end.
