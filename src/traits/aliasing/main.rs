trait CanFG {
    fn f(&self) {
        println!("CanFG f")
    }
    fn g(&self) {
        println!("CanFG g")
    }
}

trait CanF {
    fn f(&self) {
        println!("CanF f")
    }
}

struct A {}
impl CanFG for A {}
impl CanF for A {}

fn main() {
    let a = A {};
    <A as CanFG>::f(&a);
    <A as CanF>::f(&a);
    a.g();
}
