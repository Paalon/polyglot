xs = ["a", "b", "c"]

xs.pop()
xs.append("C")
xs.pop(0)
xs.insert(0, "A")
xs.pop(1)
xs.insert(1, "B")

for x in xs:
    print(x)
