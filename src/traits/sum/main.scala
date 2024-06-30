trait CanFly {
  def fly() = println("I fly.")
}

trait CanSwim {
  def swim() = println("I swim.")
}

class Duck extends CanFly with CanSwim

val duck = new Duck
duck.fly()
duck.swim()
