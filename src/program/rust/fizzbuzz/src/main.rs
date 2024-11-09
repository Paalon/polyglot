fn fizz_buzz_element_string(n: i64) -> String {
    match (n % 3 == 0, n % 5 == 0) {
        (true, true) => "fizz buzz".to_string(),
        (true, _) => "fizz".to_string(),
        (_, true) => "buzz".to_string(),
        _ => n.to_string(),
    }
}

fn print_fizz_buzz(n: i64) {
    for k in 1..=n {
        println!("{}", fizz_buzz_element_string(k))
    }
}

fn main() {
    print_fizz_buzz(30)
}
