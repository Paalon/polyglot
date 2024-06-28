struct A end
struct B end

f(::Any) = println("do the same thing from Julia")

f(A())
f(B())
