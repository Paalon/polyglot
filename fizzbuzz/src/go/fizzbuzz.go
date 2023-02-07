package main

import "fmt"

func main() {
	for n := 1; n <= 50; n++ {
		if n%3 == 0 && n%5 == 0 {
			fmt.Println("fizz buzz")
		} else if n%3 == 0 {
			fmt.Println("fizz")
		} else if n%5 == 0 {
			fmt.Println("buzz")
		} else {
			fmt.Println(n)
		}
	}
}
