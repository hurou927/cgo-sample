gcc -c -o cppfunc.o cppfunc.c
ar rcs libcppfunc.a cppfunc.o
go build main.go