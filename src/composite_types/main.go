package main

import "fmt"

type Point struct {
	X float64
	Y float64
}

func main() {
	p := Point{X: 1.0, Y: 2.0}
	fmt.Println(p.X)
	fmt.Println(p.Y)
}
