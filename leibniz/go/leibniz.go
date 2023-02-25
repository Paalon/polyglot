package main

import (
	"fmt"
	"os"
	"strconv"
)

func powersign(n int) int {
	if n%2 == 0 {
		return 1
	} else {
		return -1
	}
}

func leibniz(n int) float64 {
	s := 0.0
	for k := 0; k <= n; k++ {
		s += float64(powersign(k)) / float64(2*k+1)
	}
	return 4 * s
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	fmt.Println(leibniz(n))
}
