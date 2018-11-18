package main

// #cgo LDFLAGS: -L. -lcppfunc
// #include "cppfunc.h"
import "C"

import(
	"log"
)

func main() {
	log.Println(C.cppfunc(102));
}
