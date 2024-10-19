def powersign(n)
    if n % 2_i64 == 0_i64
        return 1_i64
    else
        return -1_i64
    end
end

def leibniz(n)
    s = 0.0
    k = 0_i64
    while k <= n
        s += powersign(k) / (2_i64 * k + 1_i64)
        k += 1_i64
    end
    return 4_i64 * s
end

n = ARGV[0].to_i64
puts leibniz(n)
