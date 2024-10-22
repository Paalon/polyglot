using StaticArrays

xs = @SVector ["a", "b", "c"]

for x in xs
    println(x)
end
