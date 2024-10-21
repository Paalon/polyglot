println((function (x, y, z)
    return x + y, x * y, z
end)(3, 4, "5"))

println((function (x, y, z)
    x + y, x * y, z
end)(3, 4, "5"))

println((function (x, y, z) x + y, x * y, z end)(3, 4, "5"))

println(((x, y, z) -> (x + y, x * y, z))(3, 4, "5"))