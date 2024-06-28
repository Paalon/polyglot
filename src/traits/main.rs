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

struct Butterfly {}
impl CanFly for Butterfly {}

struct Dolphin {}
impl CanSwim for Dolphin {}

struct Duck {}
impl CanFly for Duck {}
impl CanSwim for Duck {}

fn main() {
    let butterfly = Butterfly {};
    butterfly.fly();

    let dolphin = Dolphin {};
    dolphin.swim();

    let duck = Duck {};
    duck.fly();
    duck.swim();
}
