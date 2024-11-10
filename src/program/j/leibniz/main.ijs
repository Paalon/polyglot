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

hexadecimal =: 3 : 0
 cf8 =: 2 & (3!:5)
 bytes =: a. i. cf8 y
 , |. ((0,16) #: bytes) { '0123456789abcdef'
)

pps =: 9 !: 11
pps 17

x =: leibniz ". > 2 { ARGV
echo x
echo hexadecimal x
exit 0
