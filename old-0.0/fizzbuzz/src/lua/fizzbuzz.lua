for n = 1, 50 do
  if n % 3 == 0 and n % 5 == 0 then
    print("fizz buzz")
  elseif n % 3 == 0 then
    print("fizz")
  elseif n % 5 == 0 then
    print("buzz")
  else
    print(n)
  end
end