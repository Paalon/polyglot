function powersign(n)
    if n % 2 == 0
        1
    else
        -1
    end
end

function leibniz(n)
    s = 0.
    for k in 0:n
        s += powersign(k) / (2k + 1)
    end
    4s
end

const n = tryparse(Int64, ARGS[1])
println(leibniz(n))
