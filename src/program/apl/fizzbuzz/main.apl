      ∇R←STRING N;N3;N5
[1]   N3←0=3|N
[2]   N5←0=5|N
[3]   →8×⍳N3∧N5
[4]   →10×⍳N3
[5]   →12×⍳N5
[6]   R←⍕N
[7]   →0
[8]   R←'fizz buzz'
[9]   →0
[10]  R←'fizz'
[11]  →0
[12]  R←'buzz'∇

      ∇PRINT N;K
[1]   K←1
[2]   ⎕←STRING K
[3]   →0×⍳N=K
[4]   K←1+K
[5]   →2∇

      PRINT 30
