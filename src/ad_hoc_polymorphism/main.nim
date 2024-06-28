type A = object
proc f(_: A) = echo "A"

type B = object
proc f(_: B) = echo "B"

f A()
f B()
