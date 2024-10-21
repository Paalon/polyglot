package main

import "fmt"

func MakeSlice[T any](args ...T) []T {
	return args
}

func Pop[T any](slice *[]T) (*T, *[]T) {
	n := len(*slice) - 1
	last := (*slice)[n]
	*slice = (*slice)[:n]
	return &last, slice
}

func Push[T any](slice *[]T, xs ...T) *[]T {
	*slice = append(*slice, xs...)
	return slice
}

func Shift[T any](slice *[]T) (*T, *[]T) {
	first := (*slice)[0]
	*slice = (*slice)[1:]
	return &first, slice
}

func Unshift[T any](slice *[]T, xs ...T) *[]T {
	*slice = append(xs, (*slice)...)
	return slice
}

func Remove[T any](slice *[]T, i int) (*T, *[]T) {
	x := (*slice)[i]
	*slice = append((*slice)[:i], (*slice)[i + 1:]...)
	return &x, slice
}

func Insert[T any](slice *[]T, i int, xs ...T) *[]T {
	*slice = append((*slice)[:i], append(xs, (*slice)[i:]...)...)
	return slice
}

func main() {
	xs := MakeSlice("a", "b", "c")

	Pop(&xs)
	Push(&xs, "C")
	Shift(&xs)
	Unshift(&xs, "A")
	Remove(&xs, 1)
	Insert(&xs, 1, "B")

	for _, x := range xs {
		fmt.Println(x)
	}
}
