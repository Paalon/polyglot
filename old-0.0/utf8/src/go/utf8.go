package main

import "fmt"

func main() {
	for _, c := range "🍎 and 🍏" {
		fmt.Printf("%c\n", c)
	}
}
