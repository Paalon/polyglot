package main

import "fmt"

type CanFly interface {
	Fly()
}

type CanSwim interface {
	Swim()
}

type Butterfly struct{}

func (Butterfly) Fly() {
	fmt.Println("The butterfly flies.")
}

type Dolphin struct{}

func (Dolphin) Swim() {
	fmt.Println("The dolphin swims.")
}

type Duck struct{}

func (Duck) Fly() {
	fmt.Println("The duck flies.")
}

func (Duck) Swim() {
	fmt.Println("The duck swims.")
}

func main() {
	butterfly := Butterfly{}
	butterfly.Fly()

	dolphin := Dolphin{}
	dolphin.Swim()

	duck := Duck{}
	duck.Fly()
	duck.Swim()
}
