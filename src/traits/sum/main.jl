struct CanFly end
fly(x::T) where T = fly(CanFlyTrait(T), x)
fly(::CanFly, ::Any) = println("I fly.")

struct CanSwim end
swim(x::T) where T = swim(CanSwimTrait(T), x)
swim(::CanSwim, ::Any) = println("I swim.")

struct Duck end
CanFlyTrait(::Type{<:Duck}) = CanFly()
CanSwimTrait(::Type{<:Duck}) = CanSwim()

duck = Duck()
fly(duck)
swim(duck)
