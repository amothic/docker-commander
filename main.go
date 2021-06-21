package main

import (
	"encoding/json"
	"fmt"
	"os"
)

func main() {
	b, err := json.Marshal(os.Args[1:])
	if err != nil {
		os.Exit(1)
	}
	fmt.Println(string(b))
}
