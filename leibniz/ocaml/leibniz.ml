let powersign n =
  if n mod 2 = 0 then 1 else -1

let leibniz n =
  let s = ref 0. in
  for k = 0 to n do
    s := !s +. float (powersign k) /. float (2 * k + 1)
  done ;
  4. *. !s

let n = int_of_string Sys.argv.(1) ;;
Printf.printf "%.16f\n" (leibniz n)
