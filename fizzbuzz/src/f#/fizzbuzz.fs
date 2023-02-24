for n = 1 to 50 do
    match n % 3, n % 5 with
    | 0, 0 -> printfn "fizz buzz"
    | 0, _ -> printfn "fizz"
    | _, 0 -> printfn "buzz"
    | _, _ -> printfn "%d" n
done
