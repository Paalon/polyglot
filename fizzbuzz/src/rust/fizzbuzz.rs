fn main() {
    for n in 1..=50 {
        if n % 3 == 0 && n % 5 == 0 {
            println!("fizz buzz");
        } else if n % 3 == 0 {
            println!("fizz");
        } else if n % 5 == 0 {
            println!("buzz");
        } else {
            println!("{}", n);
        }
    }
}