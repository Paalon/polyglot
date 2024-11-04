∇R←FIZZBUZZ N;N3;N5
N3←0=3|N
N5←0=5|N
→(N3∧N5)/FB
→N3/F
→N5/B
R←N
→0
FB: R←'fizz buzz'
→0
F: R←'fizz'
→0
B: R←'buzz'
→0
∇

∇PRINT A
⎕←A
∇

PRINT¨FIZZBUZZ¨⍳30
