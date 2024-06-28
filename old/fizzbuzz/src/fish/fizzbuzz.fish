for n in (seq 1 50)
    if test (math $n % 3) -eq 0
    and test (math $n % 5) -eq 0
        echo 'fizz buzz'
    else if test (math $n % 3) -eq 0
        echo 'fizz'
    else if test (math $n % 5) -eq 0
        echo 'buzz'
    else
        echo $n
    end
end