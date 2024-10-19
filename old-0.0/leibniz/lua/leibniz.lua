function powersign(i)
    if i % 2 == 0 then
        return 1
    else
        return -1
    end
end

function leibniz(n)
    s = 0.0
    for i = 0, n, 1 do
        s = s + powersign(i) / (2.0 * i + 1.0)
    end
    return 4.0 * s
end

n = tonumber(arg[1])
print(leibniz(n))
