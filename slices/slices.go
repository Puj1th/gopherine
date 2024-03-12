package main

import "fmt"

func main() {
	a := []int{1, 2, 3, 4, 5}
	m := map[string]int{
		"k1": 1,
		"k2": 2,
		"k3": 3,
		"k4": 4,
		"k5": 5,
	}
	for i := range 5 {
		fmt.Println("index", i, "value", a[i])
	}
	for k, v := range m {
		fmt.Println("key", k, "value", v)
	}
}
