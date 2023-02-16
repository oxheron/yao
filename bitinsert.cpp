using uint32_t = unsigned int;
using size_t = unsigned long long;

uint32_t insert_bit(uint32_t n,   // The integer we are going to insert into
             size_t position, // position is the position of the new bit to be inserted
             bool new_bit) // whether the newly inserted bit is true or false
{
    uint32_t y = n;
    uint32_t x = n << 1;
    if (new_bit)
        x |= (((uint32_t) 1) << position);
    else
        x &= ~(((uint32_t) 1) << position);
    x &= ((~((uint32_t) 0)) << position);
    y &= ~((~((uint32_t) 0)) << position);
    x |= y;
    return x;
}