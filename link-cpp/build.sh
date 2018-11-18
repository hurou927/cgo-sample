g++ -c -o cppfunc.o cppfunc.cpp
ar rcs libcppfunc.a cppfunc.o
go build main.go
