(1..50).each do |n|
  if n % 3 == 0 && n % 5 == 0
    puts "fizz buzz"
  elsif n % 3 == 0
    puts "fizz"
  elsif n % 5 == 0
    puts "buzz"
  else
    puts n
  end
end