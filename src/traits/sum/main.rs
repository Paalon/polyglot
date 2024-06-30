trait CanFly {
    fn fly(&self) {
        println!("I fly.")
    }
}

trait CanSwim {
    fn swim(&self) {
        println!("I swim.")
    }
}

struct Duck {}
impl CanFly for Duck {}
impl CanSwim for Duck {}

fn main() {
    let duck = Duck {};
    duck.fly();
    duck.swim();
}
