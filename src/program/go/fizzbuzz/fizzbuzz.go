package main

import (
	"fmt"
	"strconv"
)

func fizzbuzzString(n int) string {
	n3 := n%3 == 0
	n5 := n%5 == 0
	if n3 && n5 {
		return "fizz buzz"
	} else if n3 {
		return "fizz"
	} else if n5 {
		return "buzz"
	} else {
		return strconv.Itoa(n)
	}
}

func printFizzbuzz(n int, m int) {
	for k := n; k <= m; k++ {
		fmt.Println(fizzbuzzString(k))
	}
}

func main() {
	printFizzbuzz(1, 30)
}
