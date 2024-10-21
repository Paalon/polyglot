fn main() {
    let mut xs = vec!["a", "b", "c"];

    xs.pop();
    xs.push("C");
    xs.remove(0);
    xs.insert(0, "A");
    xs.remove(1);
    xs.insert(1, "B");

    for x in &xs {
        println!("{x}");
    }
}
