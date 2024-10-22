package main

import "fmt"

func main() {
	xs := [...]string{"a", "b", "c"}
	for _, x := range xs {
		fmt.Println(x)
	}
}
