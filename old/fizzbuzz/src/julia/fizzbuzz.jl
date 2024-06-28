for n in 1:50
    if n % 3 == 0 && n % 5 == 0
        println("fizz buzz")
    elseif n % 3 == 0
        println("fizz")
    elseif n % 5 == 0
        println("buzz")
    else
        println(n)
    end
end