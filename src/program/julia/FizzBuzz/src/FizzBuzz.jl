module FizzBuzz

function fizzbuzzstring(n::Integer)
    n3 = n % 3 == 0
    n5 = n % 5 == 0
    n3 && n5 ? "fizz buzz" :
    n3 ? "fizz" :
    n5 ? "buzz" :
    string(n)
end

const n = 30

main() = foreach(println ∘ fizzbuzzstring, 1:n)

end # module FizzBuzz
