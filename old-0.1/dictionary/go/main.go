package main

import "fmt"

type Pair[F any, S any] struct {
	First  F
	Second S
}

func MakePair[F any, S any](first F, second S) Pair[F, S] {
	return Pair[F, S]{First: first, Second: second}
}

func MakeMap[K comparable, V any](pairs ...Pair[K, V]) map[K]V {
	m := map[K]V{}
	for _, pair := range pairs {
		m[pair.First] = pair.Second
	}
	return m
}

func main() {
	dictionary := MakeMap(
		MakePair("a", "apple"),
		MakePair("b", "banana"),
	)
	for key, value := range dictionary {
		fmt.Println(key, value)
	}
}
