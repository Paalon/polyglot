for n in {1..50}
do
	if [ $((n % 3)) -eq 0 ] && [ $((n % 5)) -eq 0 ]
	then
	    echo 'fizz buzz'
	elif [ $((n % 3)) -eq 0 ]
	then
		echo 'fizz'
	elif [ $((n % 5)) -eq 0 ]
	then
		echo 'buzz' 
	else
		echo $n
	fi
done
