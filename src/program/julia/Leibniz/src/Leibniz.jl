module Leibniz

(powersign(n::T)::T) where {T <: Signed} = n % T(2) == zero(T) ? one(T) : T(-1)

function leibniz(::Type{F}, n::T)::F where {T <: Signed, F <: AbstractFloat}
    s = zero(F)
    for k in zero(T):n
        s += F(powersign(k)) / F((T(2) * k + one(T)))
    end
    T(4) * s
end

function printerror()
    println("Error: pass a positive integer as an arugment.")
end

function main()
    length(ARGS) != 1 && return printerror()
    n = tryparse(Int64, ARGS[1])
    isnothing(n) && return printerror()
    println(leibniz(Float64, n))
end

end # module A
