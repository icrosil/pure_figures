// Copyright 2016 Illia Olenchenko
#include <iostream>
#include <math.h>

#include "./longStruct.cu"

using namespace std;

// N should be >=3
const int N = 13;
// L should be [4, 10, 52...]
const int L = 4;

__global__ void mykernel (void) {}

int getNextMod(int MOD, int Mp) {
  return (MOD * MOD - 2) % Mp;
}

int main(void) {
  // Calculating probable pure figure
  int Mp = (int)pow(2.0, (double)N) - 1;
  int MOD = L;
  for (int i = 0; i < N - 2; ++i) {
    MOD = getNextMod(MOD, Mp);
    cout << MOD << endl;
  }
  bool isPure = MOD == 0;
  cout << "is pure " << isPure << endl;
  return 0;
}
