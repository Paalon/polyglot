      'hexf' ⎕CY 'dfns'
      'lcase' ⎕CY 'dfns'

      ∇R←PARSE
[1]   R←⍎⊃2⌷2 ⎕NQ '.' 'GetCommandLineArgs'∇

      ∇R←LEIBNIZ N;K
[1]   R←0
[2]   K←0
[3]   R←R+(1+2×-2∣K)÷1+K×2
[4]   →7×⍳K=N
[5]   K←1+K
[6]   →3
[7]   R←4×R∇

      ∇R←U HEXADECIMAL X
[1]   R←hexf X
[2]   →0×⍳U
[3]   R←lcase R∇

      N←PARSE
      X←LEIBNIZ N
      ⎕←17 15⍕X
      ⎕←0 HEXADECIMAL X
