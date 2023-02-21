using uint32_t = unsigned int;
using size_t = unsigned long long;

uint32_t remove_bit(uint32_t n, size_t position)
{
    return (~((uint32_t) (1 << (position)) - 1) & (n >> 1)) | (n & ((1 << (position)) - 1));
}