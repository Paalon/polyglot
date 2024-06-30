package main

import "fmt"

type Season int

const (
	Spring Season = iota
	Summer
	Autumn
	Winter
)

func (season Season) String() string {
	switch season {
	case Spring:
		return "Spring"
	case Summer:
		return "Summer"
	case Autumn:
		return "Autumn"
	case Winter:
		return "Winter"
	default:
		panic(nil)
	}
}

func (season Season) Next() Season {
	return Season((season + 1) % 4)
}

func (season Season) Prev() Season {
	return Season((season + 3) % 4)
}

func (season Season) IsMild() bool {
	return season == Spring || season == Autumn
}

func (season Season) IsHot() bool {
	return season == Summer
}

func (season Season) IsCold() bool {
	return season == Winter
}

func main() {
	for _, season := range [...]Season{Spring, Summer, Autumn, Winter} {
		fmt.Println(season)
		fmt.Println(season.Next())
		fmt.Println(season.Prev())
		fmt.Println(season.IsMild())
		fmt.Println(season.IsHot())
		fmt.Println(season.IsCold())
	}
}
