struct A {}
struct B {}

fn f<T>(_: T) {
    println!("do the same thing from Rust")
}

fn main() {
    f(A{});
    f(B{});
}
