func powersign(n: Int) -> Int {
    if n % 2 == 0 {
        return 1
    } else {
        return -1
    }
}
func leibniz(n: Int) -> Double {
    var s: Double = 0
    for k in 0...n {
        s += Double(powersign(n: k)) / Double((2 * k + 1))
    }
    return 4 * s
}

let n = Int(CommandLine.arguments[1])
print(leibniz(n: n!))
