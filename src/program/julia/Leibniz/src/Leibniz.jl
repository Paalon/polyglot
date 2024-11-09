module Leibniz

export main

(powersign(n::T)::T) where {T <: Signed} = n % T(2) == zero(T) ? one(T) : T(-1)

function leibniz(::Type{F}, n::T)::Union{F, DomainError} where {T <: Union{Int8, Int16, Int32, Int64, Int128}, F <: AbstractFloat}
    m = div(typemax(T) - one(T), T(2))
    zero(T) ≤ n ≤ m || return DomainError(n, "give a non-negative integer less than or equal to $m")
    s = zero(F)
    for k in zero(T):n
        s += F(powersign(k)) / F((T(2) * k + one(T)))
    end
    T(4) * s
end

hexadecimal64(x) = string(reinterpret(UInt64, x); base=16)

function printerror(::Type{T}) where {T <: Union{Int8, Int16, Int32, Int64, Int128}}
    n = div(typemax(T) - one(T), T(2))
    println("Error: pass a non-negative integer less than or equal to $n as an arugment")
end

function (@main)(args::Vector{String})
    T = Int64
    if length(args) != 1
        printerror(T)
        return 1
    end
    n = tryparse(T, args[1])
    if isnothing(n)
        printerror(T)
        return 1
    end
    x = leibniz(Float64, n)
    if x isa DomainError
        printerror(T)
        return 1
    end
    println(x)
    println(hexadecimal64(x))
    0
end

end # module Leibniz
