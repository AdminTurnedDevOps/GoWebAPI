package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	request1()
}

func homePage(response http.ResponseWriter, r *http.Request) {
	fmt.Printf("Welcome to the Go Web API!")
	fmt.Println("Endpoint Hit: homePage")
}

func aboutMe(response http.ResponseWriter, r *http.Request) {
	who := "MichaelLevan"

	fmt.Fprintf(response, "A little bit about Michael Levan...")
	fmt.Println("Endpoint Hit: ", who)
}

func request1() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/aboutme", aboutMe)

	log.Fatal(http.ListenAndServe(":1000", nil))
}
