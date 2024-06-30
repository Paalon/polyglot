module CanFGModule
    abstract type CanFGTrait end
    struct CanFG <: CanFGTrait end
    f(x) = f(CanFGTrait(x), x)
    f(::CanFG, ::Any) = println("CanFG f")
    g(x) = g(CanFGTrait(x), x)
    g(::CanFG, ::Any) = println("CanFG g")
end

module CanFModule
    abstract type CanFTrait end
    struct CanF <: CanFTrait end
    f(x) = f(CanFTrait(x), x)
    f(::CanF, ::Any) = println("CanF f")
end

using .CanFGModule, .CanFModule
const g = CanFGModule.g
const canfg_f = CanFGModule.f
const canf_f = CanFModule.f

struct A end
CanFGModule.CanFGTrait(::A) = CanFGModule.CanFG()
CanFModule.CanFTrait(::A) = CanFModule.CanF()

a = A()
canfg_f(a)
canf_f(a)
g(a)
