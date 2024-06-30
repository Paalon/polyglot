trait CanF {
    fn f1(&self) {
        println!("CanF f1")
    }
    fn f2(&self) {
        println!("CanF f2")
    }
}

trait CanF2 {
    fn f2(&self) {
        println!("CanF2 f2")
    }
}

struct A {}
impl CanF for A {}
impl CanF2 for A {}

fn main() {
    let a = A {};
    a.f1();
    <A as CanF>::f2(&a);
    <A as CanF2>::f2(&a);
}
