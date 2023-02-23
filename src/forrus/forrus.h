#include <stdint.h>
#include <math.h>
#include <array>

struct hash_t
{
    size_t lval;
    size_t hval;
};

namespace forrus {
    uint8_t* round(uint8_t* inp, uint8_t key);
    hash_t hash(uint8_t* inp);
}
