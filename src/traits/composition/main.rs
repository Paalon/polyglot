trait CanFly {
    fn fly(&self) {
        println!("I fly.")
    }
}

struct Butterfly {}

impl CanFly for Butterfly {}

fn main() {
    let butterfly = Butterfly {};
    butterfly.fly();
}
