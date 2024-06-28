struct CanFly end
fly(x::T) where T = fly(CanFly(T), x)

struct CanSwim end
swim(x::T) where T = swim(CanSwim(T), x)

struct Butterfly end
CanFly(::Type{<:Butterfly}) = CanFly()
fly(::CanFly, ::Butterfly) = println("The butterfly flies.")

struct Dolphin end
CanSwim(::Type{<:Dolphin}) = CanSwim()
swim(::CanSwim, ::Dolphin) = println("The dolphin swims.")

struct Duck end
CanFly(::Type{<:Duck}) = CanFly()
fly(::CanFly, ::Duck) = println("The duck flies.")
CanSwim(::Type{<:Duck}) = CanSwim()
swim(::CanSwim, ::Duck) = println("The duck swims.")

butterfly = Butterfly()
fly(butterfly)

dolphin = Dolphin()
swim(dolphin)

duck = Duck()
fly(duck)
swim(duck)
