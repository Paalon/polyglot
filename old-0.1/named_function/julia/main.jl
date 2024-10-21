function f1(x, y, z)
    return x + y, x * y, z
end

function f2(x, y, z)
    x + y, x * y, z
end

f3(x, y, z) = x + y, x * y, z

f4(x, y, z) = let
    x + y, x * y, z
end

println(f1(3, 4, "5"))
println(f2(3, 4, "5"))
println(f3(3, 4, "5"))
println(f4(3, 4, "5"))