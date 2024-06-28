struct Animal {
    name: &'static str,
    weight: f64,
}

fn main() {
    let animal = Animal {
        name: "Max",
        weight: 5.0,
    };
    println!("{}", animal.name);
    println!("{}", animal.weight);
}