#pragma once

// The number of rounds the cipher has 
// Must be multiple of 3
// 1 round is either a subsitute / mix random 
// Or transpose and convolute
// So order will be subs, mix, trans, conv, trans, conv, and that repeats (that is 3 'rounds')
#define ROUND_NUM 12

// XXhash library
// Hopefully we will use our own hash at some point
#include "xxhash.h"

// std
#include <array>

// Return an array of size ct with elements from 0 to ct - 1
template <int ct> 
constexpr std::array<uint8_t, ct> gen_init_array()
{
    std::array<uint8_t, ct> rt_array;
    for (size_t i = 0; i < ct; i++)
    {
        rt_array[i] = i;
    }

    return rt_array;
}

// Return a random array of size ct, with 1 random element of each from 0 to ct - 1
// This will be in a random order 
// Uses Knuth shuffling algorithm
template <int ct> 
std::array<uint8_t, ct> gen_rnd_array(uint8_t* keyptr)
{
    auto hash = XXH3_128bits(keyptr, 16);
    size_t xor_hash = hash.low64 ^ hash.high64;
    std::array<uint8_t, ct> swapped_array = gen_init_array<ct>();

    for (int i = ct - 1; i > 0; i--)
    {
        std::swap(swapped_array[xor_hash % i], swapped_array[i]);
        hash = XXH3_128bits(&hash, 16);
        xor_hash = hash.low64 ^ hash.high64;
    }

    return swapped_array;
}

// Generate the substitution tables
// Pass in the key as a uint8_t ptr for now
std::array<std::array<uint8_t, 256>, 16> gen_subst_tables(uint8_t* key);

// Generate the transposition tables
std::pair<std::array<std::array<uint8_t, 64>, ROUND_NUM / 3>, std::array<std::array<uint8_t, 36>, ROUND_NUM / 3>> gen_transpos_tables(uint8_t* kptr);