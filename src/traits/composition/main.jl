struct CanFly end
fly(x) = fly(CanFlyTrait(x), x)
fly(::CanFly, ::Any) = println("I fly.")

struct Butterfly end
CanFlyTrait(::Butterfly) = CanFly()

butterfly = Butterfly()
fly(butterfly)
