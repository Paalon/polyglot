module FizzBuzz

export main

function fizzbuzzelementstring(n::T) where {T <: Integer}
    n3 = iszero(n % T(3))
    n5 = iszero(n % T(5))
    if n3 && n5
        "fizz buzz"
    elseif n3
        "fizz"
    elseif n5
        "buzz"
    else
        string(n)
    end
end

(printfizzbuzz(n::T) where {T <: Integer}) = foreach(println ∘ fizzbuzzelementstring, one(T):n)

(@main)(::Vector{String}) = printfizzbuzz(30)

end # module FizzBuzz
