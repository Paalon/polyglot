for n = 1 to 50 do
  match n mod 3, n mod 5 with
  | 0, 0 -> Printf.printf "fizz buzz\n"
  | 0, _ -> Printf.printf "fizz\n"
  | _, 0 -> Printf.printf "buzz\n"
  | _, _ -> Printf.printf "%d\n" n
done
