struct CanFly end
fly(x::T) where T = fly(CanFly(T), x)
fly(::CanFly, ::Any) = println("I fly.")

struct CanSwim end
swim(x::T) where T = swim(CanSwim(T), x)
swim(::CanSwim, ::Any) = println("I swim.")

struct Butterfly end
CanFly(::Type{<:Butterfly}) = CanFly()

struct Dolphin end
CanSwim(::Type{<:Dolphin}) = CanSwim()

struct Duck end
CanFly(::Type{<:Duck}) = CanFly()
CanSwim(::Type{<:Duck}) = CanSwim()

butterfly = Butterfly()
fly(butterfly)

dolphin = Dolphin()
swim(dolphin)

duck = Duck()
fly(duck)
swim(duck)
