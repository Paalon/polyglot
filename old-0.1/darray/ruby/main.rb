xs = ["a", "b", "c"]

xs.pop()
xs.push("C")
xs.shift()
xs.unshift("A")
xs.delete_at(1)
xs.insert(1, "B")

for x in xs do
  puts(x)
end
