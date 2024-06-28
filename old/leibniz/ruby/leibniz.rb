def powersign(n)
    if n % 2 == 0
        return 1
    else
        return -1
    end
end

def leibniz(n)
    s = 0
    for k in 0..n do
        s += powersign(k).to_f / (2 * k + 1).to_f
    end
    return 4 * s
end

n = ARGV[0].to_i
puts leibniz(n)
