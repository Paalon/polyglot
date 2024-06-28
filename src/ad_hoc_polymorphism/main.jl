struct A end
f(::A) = println("A")

struct B end
f(::B) = println("B")

f(A())
f(B())
