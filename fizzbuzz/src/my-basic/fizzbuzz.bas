for n = 1 to 50
	fizz = n mod 3 = 0
	buzz = n mod 5 = 0
	if fizz and buzz then
		print "fizz buzz";
	elseif fizz then
		print "fizz";
	elseif buzz then
		print "buzz";
	else
		print n;
	endif
next n
