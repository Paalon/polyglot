program fizzbuzz
  integer n
  do n = 1, 50
    if (mod(n, 3) == 0 .and. mod(n, 5) == 0) then
      print '(A)', 'fizz buzz'
    else if (mod(n, 3) == 0) then
      print '(A)', 'fizz'
    else if (mod(n, 5) == 0) then
      print '(A)', 'buzz'
    else
      print '(I0)', n
    end if
  end do
end program fizzbuzz
