      ∇R←PARSE A
[1]   →4×⍳'--'≡↑A
[2]   A←1↓A
[3]   →1
[4]   R←⍎2⊃A∇

      ∇R←LEIBNIZ N;K
[1]   R←0
[2]   K←0
[3]   R←R+(1+2×−2∣K)÷1+K×2
[4]   →7×⍳K=N
[5]   K←1+K
[6]   →3
[7]   R←4×R∇

      ∇R←U HEXADECIMAL X;BYTE;BITS
[1]   BYTE←8
[2]   BITS←64
[3]   R←(6-U) ⎕CR ((BITS÷BYTE)⍴2⋆BYTE)⊤27 ⎕CR X∇

      N←PARSE ⎕ARG
      X←LEIBNIZ N
      ⎕←17 15⍕X
      ⎕←0 HEXADECIMAL X
