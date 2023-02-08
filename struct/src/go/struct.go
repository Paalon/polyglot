package main

import "fmt"

type Animal struct {
	Name   string
	Weight float64
}

func main() {
	animal := Animal{"Max", 5}
	fmt.Println(animal.Name)
	fmt.Println(animal.Weight)
}
