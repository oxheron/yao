#include "yao/yao.h"

#include "xxhash.h"
#include "xxh3.h"
#include <iostream>

const std::array<uint8_t, 256> init_array = gen_init_array();

constexpr std::array<uint8_t, 256> gen_init_array()
{
    std::array<uint8_t, 256> rt_array;
    for (size_t i = 0; i < 256; i++)
    {
        rt_array[i] = i;
    }

    return rt_array;
}

std::array<uint8_t, 256> gen_subst_table(uint8_t* keyptr)
{
    auto hash = XXH3_128bits(keyptr, 16);
    size_t xor_hash = hash.low64 ^ hash.high64;
    std::array<uint8_t, 256> swapped_array = init_array;

    for (int i = 255; i > 0; i--)
    {
        std::swap(swapped_array[xor_hash % i], swapped_array[i]);
        hash = XXH3_128bits(&hash, 16);
        xor_hash = hash.low64 ^ hash.high64;
    }

    return swapped_array;
}

std::array<std::array<uint8_t, 256>, 16> gen_subst_tables(uint8_t* keyptr)
{
    std::array<std::array<uint8_t, 256>, 16> rval;

    for (size_t i = 0; i < 16; i++)
    {
        // Change data at keyptr to a fixed algorithm
    }
} 