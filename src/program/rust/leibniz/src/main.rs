use std::process::ExitCode;
use std::ops::{AddAssign, MulAssign, Div};
use num_traits::float::Float;
use num_traits::cast::FromPrimitive;
use num_traits::int::PrimInt;
use num_traits::sign::Signed;
use std::fmt::Display;

fn powersign<T: PrimInt>(n: T) -> T {
    if n % T::from(2).unwrap() == T::from(0).unwrap() {
        T::from(1).unwrap()
    } else {
        T::from(-1).unwrap()
    }
}

struct LeibnizError {}

fn leibniz_max<T: PrimInt + Signed + FromPrimitive>() -> T {
    (T::max_value() - T::from(1).unwrap()) / T::from(2).unwrap()
}

fn leibniz<T: PrimInt + Signed + FromPrimitive + AddAssign, F: Float + FromPrimitive + AddAssign + MulAssign + Div<Output = F>>(n: T) -> Result<F, LeibnizError> {
    if !(T::from(0).unwrap() <= n && n <= leibniz_max::<T>()) {
        Err(LeibnizError {})
    } else {
        let mut result = F::from(0).unwrap();
        if n >= T::from(0).unwrap() {
            let mut k = T::from(0).unwrap();
            loop {
                result += F::from(powersign(k)).unwrap() / F::from(T::from(2).unwrap() * k + T::from(1).unwrap()).unwrap();
                if k >= n {
                    break;
                }
                k += T::from(1).unwrap();
            }
        }
        result *= F::from(4).unwrap();
        Ok(result)
    }
}

fn print_error<T: Display + PrimInt + Signed + FromPrimitive>() {
    println!("Error: pass a non-negative integer less than or equal to {} as an argument", leibniz_max::<T>());
}

fn main() -> ExitCode {
    type T = i64;
    let args = std::env::args().collect::<Vec<String>>();
    if args.len() != 2usize {
        print_error::<T>();
        return ExitCode::FAILURE;
    }
    let Ok(n) = args[1usize].parse::<T>() else {
        print_error::<T>();
        return ExitCode::FAILURE;
    };
    let Ok(x) = leibniz::<T, f64>(n) else {
        print_error::<T>();
        return ExitCode::FAILURE;
    };
    println!("{}", x);
    println!("{:x}", x.to_bits());
    ExitCode::SUCCESS
}
