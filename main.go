package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("Listening on: 8080")
	fileserver := http.FileServer(http.Dir("files"))
	http.ListenAndServe(":8080", fileserver)
}
