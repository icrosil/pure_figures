// Copyright 2016 Illia Olenchenko
#include <iostream>

using namespace std;

__global__ void mykernel (void) {}

int main(void) {
  mykernel<<<1, 1>>>();
  cout << "HELLO CUDA!" << endl;
  return 0;
}
