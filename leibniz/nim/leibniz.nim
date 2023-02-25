import os
import strutils

proc powersign(n: int64): float64 =
    if n mod 2 == 0:
        return 1.0
    else:
        return -1.0

proc leibniz(n: int64): float64 =
    var s = 0.0
    for i in 0 .. n:
        s += powersign(i) / (2.0 * i.float64 + 1.0)
    return 4.0 * s

let n = parseInt(paramStr(1))
echo leibniz(n)
