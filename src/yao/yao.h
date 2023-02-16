#pragma once

// XXhash library
// Hopefully we will use our own hash at some point (forrus++)
#include "xxhash.h"

// Rng library
#include "csprng/duthomhas/csprng.hpp"

// std
#include <array>
#include <iostream>

using ykey_t = XXH128_hash_t;
using block = std::array<uint32_t, 16>;

// Return an array of size C with elements from 0 to C - 1
template <int C> 
constexpr std::array<uint8_t, C> gen_init_array()
{
    std::array<uint8_t, C> rt_array;
    for (size_t i = 0; i < C; i++)
    {
        rt_array[i] = i;
    }

    return rt_array;
}

// Return a random array of size C, with 1 random element of each from 0 to C - 1
// This will be in a random order 
// Uses Knuth shuffling algorithm
template <int C> 
constexpr std::array<uint8_t, C> gen_rnd_array(ykey_t key)
{
    auto hash = XXH3_128bits(&key, 16);
    size_t xor_hash = hash.low64 ^ hash.high64;
    std::array<uint8_t, C> swapped_array = gen_init_array<C>();

    for (int i = C - 1; i > 0; i--)
    {
        std::swap(swapped_array[xor_hash % i], swapped_array[i]);
        hash = XXH3_128bits(&hash, 16);
        xor_hash = hash.low64 ^ hash.high64;
    }

    return swapped_array;
}

// Used to generate tables
// T is the size of each table, R is the number of tables
template <int T, int R> 
constexpr std::array<std::array<uint8_t, T>, R> gen_tables(ykey_t key)
{
    std::array<std::array<uint8_t, T>, R> rval;

    for (size_t i = 0; i < 6; i++)
    {
        // Xor keyptr by hash
        // Hash that again 
        rval[i] = gen_rnd_array<T>(key);

        auto hash = XXH3_128bits(&key, 16);
        key.high64 ^= hash.low64;
        key.low64 ^= hash.high64;
    }

    return rval;
} 

// Used to generate the random bit tables
// T is the maximum number of bits the output will have
template <int T> 
inline std::array<std::array<uint8_t, 4>, (T - 8) / 4> gen_bit_tables(ykey_t key)
{
    auto last_tables = gen_bit_tables<T - 4>(XXH3_128bits(&key, 16));
    std::array<std::array<uint8_t, 4>, (T - 8) / 4> rval;

    for (size_t i = 0; i < ((T - 12) / 4); i++)
    {
        rval[i] = last_tables[i];
    }
    
    auto mix = gen_rnd_array<T>(key);
    for (size_t i = 0; i < 4; i++)
    {
        rval.back()[i] = mix[i];
    }

    return rval;
} 

template <> 
inline std::array<std::array<uint8_t, 4>, 1> gen_bit_tables<12>(ykey_t key)
{
    std::array<std::array<uint8_t, 4>, 1> rval; 

    auto mix = gen_rnd_array<12>(key);
    for (size_t i = 0; i < 4; i++)
    {
        rval[0][i] = mix[i];
    }
    
    return rval;
}

inline ykey_t gen_key()
{   
    return ykey_t();
}

// The main class for 
class YaoCipher
{
private:
    // The key 
    ykey_t key;

    // Tables for substitution and tranposition
    std::array<std::array<uint8_t, 256>, 6> subst_tables;
    std::array<std::array<uint8_t, 16>, 6> transpos_tables;
    std::array<std::array<uint8_t, 4>, 6> randbit_tables;

    // The random shift data for the numbers
    duthomhas::csprng rng;

public: 
    YaoCipher(); 
    YaoCipher(ykey_t k);

    // Encrypt a block
    block encrypt(block& input);
    // Encrypt a string
    std::string encrypt(const std::string& input);

    // Decrypt a block
    block decrypt(block& input);
    // Decrypt a string
    std::string decrypt(const std::string& input);

private:
    // Does one round
    block round(block& input, size_t round_ct);
    // Undoes one round
    block unround(block& input);

    // Does substitution on a value based on the round count
    void substitute(uint8_t* input, size_t round_ct);
};
