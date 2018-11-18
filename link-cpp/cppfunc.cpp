#include <stdio.h>
#include <iostream>

extern "C" {

int cppfunc(int a){
    printf("cppfunc:%d\n", a);
    std::cout<<"Hello"<<std::endl;
    return 927;
}

}
