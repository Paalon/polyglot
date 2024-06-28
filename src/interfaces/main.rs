trait CanFly {
    fn fly(&self);
}

trait CanSwim {
    fn swim(&self);
}

struct Butterfly {}
impl CanFly for Butterfly {
    fn fly(&self) {
        println!("The butterfly flies.")
    }
}

struct Dolphin {}
impl CanSwim for Dolphin {
    fn swim(&self) {
        println!("The dolphin swims.")
    }
}

struct Duck {}
impl CanFly for Duck {
    fn fly(&self) {
        println!("The duck flies.")
    }
}
impl CanSwim for Duck {
    fn swim(&self) {
        println!("The duck swims.")
    }
}

fn main() {
    let butterfly = Butterfly {};
    butterfly.fly();

    let dolphin = Dolphin {};
    dolphin.swim();

    let duck = Duck {};
    duck.fly();
    duck.swim();
}
