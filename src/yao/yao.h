#pragma once

// XXhash library
// Hopefully we will use our own hash at some point (forrus++)
#include "xxhash.h"

// Rng library
#include "csprng/duthomhas/csprng.hpp"

// std
#include <array>
#include <iostream>
#include <bitset>

using ykey_t = XXH128_hash_t;
using block = std::array<uint32_t, 16>;

// Function to remove and insert bits into an integer
uint32_t insert_bit(uint32_t n, size_t position, bool bit) 
{
    uint32_t y = n;
    uint32_t x = n << 1;
    if (bit)
        x |= (((uint32_t) 1) << position);
    else
        x &= ~(((uint32_t) 1) << position);
    x &= ((~((uint32_t) 0)) << position);
    y &= ~((~((uint32_t) 0)) << position);
    x |= y;
    return x;
}

uint32_t remove_bit(uint32_t n, size_t position)
{
    return (~((uint32_t) (1 << (position)) - 1) & (n >> 1)) | (n & ((1 << (position)) - 1));
}

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
    
    auto mix = gen_rnd_array<T - 3>(key);
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

    auto mix = gen_rnd_array<9>(key);
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

    // Tables for substitution
    std::array<std::array<uint8_t, 256>, 6> subst_tables;
    std::array<std::array<uint8_t, 256>, 6> reverse_subst_tables;
    std::array<std::array<uint8_t, 16>, 3> subst_tables_4;
    std::array<std::array<uint8_t, 16>, 3> rv_subst_tables_4;

    // Tables for transposition
    std::array<std::array<uint8_t, 16>, 6> transpos_tables;
    std::array<std::array<uint8_t, 16>, 6> reverse_transpos_tables;

    // Tables for what bits are random
    std::array<std::array<uint8_t, 4>, 6> randbit_tables;

    // The random shift data for the numbers
    duthomhas::csprng rng;
public: 
    YaoCipher(); 
    YaoCipher(ykey_t k);

    // Encrypt a block
    template <typename T>
    T encrypt(T& input)
    {
        for (size_t i = 0; i < 6; i++)
        {
            input = round(input, i);
        }

        return input;
    }
    // Encrypt a string
    std::string encrypt(const std::string& input);

    // Decrypt a block
    template <typename T>
    T decrypt(T& input)
    {
        for (int i = 5; i >= 0; i--)
        {
            input = unround(input, i);
        }

        return input;
    }
    
    // Decrypt a string
    std::string decrypt(const std::string& input);

private:
public:
    // Does one round
    template <typename T>
    inline T round(T& input, size_t round_ct)
    {
        // Subsitute
        for (auto& x : input)
        {
            substitute((uint8_t*) &x, round_ct);
        }

        // Transpose
        auto copy(std::move(input));
        input = block();

        for (size_t i = 0; i < copy.size(); i++)
        {
            input[transpos_tables[round_ct][i]] = copy[i];
        }

        // Bitexpand
        std::bitset<64> rng_bits = rng();
        for (size_t i = 0; i < input.size(); i++)
        {
            // A bitset that has a fast operation to insert a bit and remove at the back
            input[i] = insert_bit(input[i], randbit_tables[round_ct][0], rng_bits[i * 4]);
            input[i] = insert_bit(input[i], randbit_tables[round_ct][1], rng_bits[i * 4 + 1]);
            input[i] = insert_bit(input[i], randbit_tables[round_ct][2], rng_bits[i * 4 + 2]);
            input[i] = insert_bit(input[i], randbit_tables[round_ct][3], rng_bits[i * 4 + 3]);
        }

        return input;
    }

    // Undoes one round
    template <typename T>
    inline T unround(T& input, size_t round_ct)
    {
        // Unbitexpand
        for (size_t i = 0; i < input.size(); i++)
        {
            // A bitset that has a fast operation to insert a bit and remove at the back
            input[i] = remove_bit(input[i], randbit_tables[round_ct][3]);
            input[i] = remove_bit(input[i], randbit_tables[round_ct][2]);
            input[i] = remove_bit(input[i], randbit_tables[round_ct][1]);
            input[i] = remove_bit(input[i], randbit_tables[round_ct][0]);
        }

        // Reverse transpose
        auto copy(std::move(input));
        input = block();

        for (size_t i = 0; i < copy.size(); i++)
        {
            input[reverse_transpos_tables[round_ct][i]] = copy[i];
        }

        // Reverse subsitute
        for (auto& x : input)
        {
            reverse_substitute((uint8_t*) &x, round_ct);
        }

        return input;
    }

    // Does substitution on a value based on the round count
    void substitute(uint8_t* input, size_t round_ct);
    // Does reverse substitution on a value based on the round count
    void reverse_substitute(uint8_t* input, size_t round_ct);
};
