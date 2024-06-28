trait CanF {
    fn f(&self);
}

struct A {}

impl CanF for A {
    fn f(&self) {
        println!("A")
    }
}

struct B {}

impl CanF for B {
    fn f(&self) {
        println!("B")
    }
}

fn main() {
    A{}.f();
    B{}.f();
}
