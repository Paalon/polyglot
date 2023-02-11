for n = 1 to 50 do
  if n mod 3 == 0 && n mod 5 == 0
    then Printf.printf "fizz buzz\n"
  else if n mod 3 == 0
    then Printf.printf "fizz\n"
  else if n mod 5 == 0
    then Printf.printf "buzz\n"
  else Printf.printf "%d\n" n
done;;
