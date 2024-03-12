package main

import "fmt"

func testRune(r rune) {
	fmt.Println(r)
}
func testString(s string) {
	fmt.Println(s)
}

func main() {
	testRune('o')
	testString("oye")
}
