trait CanFG {
  def f = println("CanFG f")
  def g = println("CanFG g")
}

trait CanF {
  def f = println("CanF f")
}

class A extends CanFG with CanF {
  override def f = println("A f")
}

val a = new A

a.f
a.g
