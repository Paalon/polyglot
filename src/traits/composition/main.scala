trait CanFly {
  def fly() = println("I fly.")
}

class Butterfly extends CanFly

val butterfly = new Butterfly
butterfly.fly()
