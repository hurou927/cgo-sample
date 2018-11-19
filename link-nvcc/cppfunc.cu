#include <stdio.h>
#include <iostream>

#define NUMTHREADS 32

__global__ void kernel(){
	int tx = blockDim.x*blockIdx.x+threadIdx.x;
    printf("%d\n",tx);
}



extern "C" {

int cppfunc(int a){
    int numthreads= NUMTHREADS;
    int numblocks = 2;
    printf("cppfunc:%d blocks %d\n", a, numblocks);
    std::cout<<"Hello"<<std::endl;

    std::cout << "kernel:" << a << std::endl;
    cudaDeviceSynchronize();
    kernel <<< numblocks , numthreads >>> ();
    cudaDeviceSynchronize();

    return 927;
}

}
