use std::collections::HashMap;

fn main() {
    let dictionary = HashMap::from(
        ("a", "apple"),
        ("b", "banana"),
    );
    for (key, value) in dictionary.iter() {
        println!("{} {}", key, value);
    }
}
