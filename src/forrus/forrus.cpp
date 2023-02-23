#include "forrus.h"

// unsigned char leftRotate(unsigned char val, int n) 
// { 
//   unsigned int t; 
 
//   t = val; 
 
//   for(int i=0; i < n; i++) { 
//     t = t << 1; 
 
//     /* If a bit shifts out, it will be in bit 8 
//        of the integer t. If this is the case, 
//        put that bit on the right side. */ 
//     if(t & 256) 
//       t = t | 1; // put a 1 on the right end 
//   } 
 
//   return t; // return the lower 8 bits. 
// } 

int myPow(int x, unsigned int p)
{
  if (p == 0) return 1;
  if (p == 1) return x;
  
  int tmp = myPow(x, p/2);
  if (p%2 == 0) return tmp * tmp;
  else return x * tmp * tmp;
}


uint8_t leftRotate(uint8_t n, uint8_t d) {
    return (n << d)|(n >> (8 - d));
}

uint8_t* forrus::round(uint8_t* inp, uint8_t key) {
    *inp ^= key;
    *inp = leftRotate(*inp, 3);
    *inp = (uint8_t)(myPow((float)*inp, 5.0) % 173);
    *inp ^= (uint8_t)(myPow((float)key, 5.0) % 173);

    return inp;
}

hash_t forrus::hash(uint8_t* inp) 
{
    for (size_t idx = 0; idx < 16; idx++) 
    {
        for (size_t d = 0; d < 16; d++) round(inp + idx, idx * d);
    }

    return *((hash_t*) inp);
}