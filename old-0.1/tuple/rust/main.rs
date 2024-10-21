macro_rules! println_types {
    ($($x:expr),*) => {
        $(println!("{}", std::any::type_name_of_val($x));)*
    };
}

fn main() {
    let (a, b, c, d) = (0, 0., '0', "0");
    println_types!(&a, &b, &c, &d);
}
