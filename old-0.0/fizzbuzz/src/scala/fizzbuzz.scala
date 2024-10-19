object fizzbuzz {
  def main(args:Array[String]):Unit = {
    for (n <- 1 to 50) {
      if (n % 3 == 0 && n % 5 == 0) {
        println("fizz buzz")
      } else if (n % 3 == 0) {
        println("fizz")
      } else if (n % 5 == 0) {
        println("buzz")
      } else {
        println(n)
      }
    }
  }
}