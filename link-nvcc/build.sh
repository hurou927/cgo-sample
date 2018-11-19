nvcc -c -o cppfunc.o cppfunc.cu -arch sm_75
ar rcs libcppfunc.a cppfunc.o
go build main.go
