package main

import (
	"fmt"
	"go-testing-sandbox/hello"
	"go-testing-sandbox/integers"
)

func main() {
	fmt.Println(hello.Hello())
	fmt.Println(integers.Add(2, 2))
}
