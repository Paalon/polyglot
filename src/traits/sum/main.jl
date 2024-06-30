struct CanFly end
fly(x) = fly(CanFlyTrait(x), x)
fly(::CanFly, ::Any) = println("I fly.")

struct CanSwim end
swim(x::T) where T = swim(CanSwimTrait(T), x)
swim(::CanSwim, ::Any) = println("I swim.")

struct Duck end
CanFlyTrait(::Duck) = CanFly()
CanSwimTrait(::Duck) = CanSwim()

duck = Duck()
fly(duck)
swim(duck)
