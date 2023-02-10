#include "yao/yao.h"

std::array<std::array<uint8_t, 256>, 16> gen_subst_tables(uint8_t* keyptr)
{
    std::array<std::array<uint8_t, 256>, 16> rval;

    for (size_t i = 0; i < 16; i++)
    {
        // Xor keyptr by hash
        // Hash that again 
        rval[i] = gen_rnd_array<256>(keyptr);

        auto hash = XXH3_128bits(keyptr, 16);
        *((uint64_t*) keyptr) ^= hash.low64;
        *(((uint64_t*) keyptr) + 1) ^= hash.high64;
    }

    return rval;
} 

std::pair<std::array<std::array<uint8_t, 64>, ROUND_NUM / 3>, std::array<std::array<uint8_t, 36>, ROUND_NUM / 3>> gen_transpos_tables(uint8_t* keyptr)
{   
    size_t old_kp_low = *((uint64_t*) keyptr);
    *((uint64_t*) keyptr) = ~*(((uint64_t*) keyptr) + 1);
    *(((uint64_t*) keyptr) + 1) = ~old_kp_low;

    std::array<std::array<uint8_t, 64>, ROUND_NUM / 3> transpose_8x8;
    std::array<std::array<uint8_t, 36>, ROUND_NUM / 3> transpose_6x6;

    for (size_t i = 0; i < ROUND_NUM / 3; i++)
    {
        // Xor keyptr by hash
        // Hash that again 
        // Gen a random array for transposing 8x8's
        transpose_8x8[i] = gen_rnd_array<64>(keyptr);
        auto hash = XXH3_128bits(keyptr, 16);
        *((uint64_t*) keyptr) ^= hash.low64;
        *(((uint64_t*) keyptr) + 1) ^= hash.high64;

        // Gen a random array for transposing 6x6's
        transpose_6x6[i] = gen_rnd_array<36>(keyptr);
        hash = XXH3_128bits(keyptr, 16);
        *((uint64_t*) keyptr) ^= hash.low64;
        *(((uint64_t*) keyptr) + 1) ^= hash.high64;
    }

    return {transpose_8x8, transpose_6x6};
}
