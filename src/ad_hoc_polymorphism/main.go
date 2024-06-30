package main

import "fmt"

type A struct{}

func (A) F() {
	fmt.Println("A")
}

type B struct{}

func (B) F() {
	fmt.Println("B")
}

func main() {
	A{}.F()
	B{}.F()
}
