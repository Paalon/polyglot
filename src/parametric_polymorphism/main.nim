type A = object
type B = object

proc f[T](_: T) = echo "do the same thing from Nim"

f A()
f B()
