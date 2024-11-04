∇R←FIZZBUZZ N;N3;N5
N3←0=3|N
N5←0=5|N
→(N3∧N5)/0⊣R←'fizz buzz'
→N3/0⊣R←'fizz'
→N5/0⊣R←'buzz'
R←⍕N
∇

∇PRINT A
⎕←A
∇

PRINT¨FIZZBUZZ¨⍳30
