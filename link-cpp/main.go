package main

// #cgo CXXFLAGS: -std=c++11 -I.. -O2 -fomit-frame-pointer -Wall
// #cgo LDFLAGS: -L. -lcppfunc -lstdc++
// #include "cppfunc.h"
import "C"

import(
	"log"
)

func main() {
	log.Println(C.cppfunc(102));
}
