#include <iostream>

using uint32_t = unsigned int;

uint32_t insert_bit(uint32_t n,   // The integer we are going to insert into
             unsigned long long position, // position is the position of the new bit to be inserted
             bool new_bit);

int main(void)
{
    uint32_t x = 0b0010;
    x = insert_bit(x, 0, 1);
    std::cout << x << std::endl;
}