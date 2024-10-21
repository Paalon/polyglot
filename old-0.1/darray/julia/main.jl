xs = ["a", "b", "c"]

pop!(xs)
push!(xs, "C")
popfirst!(xs)
pushfirst!(xs, "A")
popat!(xs, 2)
insert!(xs, 2, "B")

for x in xs
    println(x)
end
