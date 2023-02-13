for n <- 1..50 do
  cond do
    Integer.mod(n, 3) == 0 and Integer.mod(n, 5) == 0 -> IO.puts "fizz buzz"
    Integer.mod(n, 3) == 0 -> IO.puts "fizz"
    Integer.mod(n, 5) == 0 -> IO.puts "buzz"
    :else -> IO.puts n
  end
end
