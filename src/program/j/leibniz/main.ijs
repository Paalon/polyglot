powersign =: 3 : 0
 if. 2 | y do.
  _1
 else.
  1
 end.
)

leibniz =: 3 : 0
 r =. 0
 k =. 0
 while. y >: k do.
  r =. r + (powersign k) % 1 + 2 * k
  k =. 1 + k
 end.
 4 * r
)

pps =: 9 !: 11
pps 17

echo leibniz ". > 2 { ARGV
exit 0
