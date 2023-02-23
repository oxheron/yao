#pragma once

// Rng library
#include "csprng/duthomhas/csprng.hpp"

// Forrus++ 
#include "forrus/forrus.h"

// std
#include <array>
#include <iostream>
#include <bitset>

using ykey_t = hash_t;
using block = std::array<uint32_t, 16>;

// Functions to remove and insert bits into an integer
inline uint32_t insert_bit(uint32_t n, size_t position, bool bit) 
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
    // Ill get this working later
    // return (uint32_t) (n & ((1 << position) - 1)) | (bit << position) | ((size_t) (n & (~((1 << position + 1) - 1))) << 1);
}

inline uint32_t remove_bit(uint32_t n, size_t position)
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
    auto hash = forrus::hash((uint8_t*) &key);
    size_t xor_hash = hash.lval ^ hash.hval;
    std::array<uint8_t, C> swapped_array = gen_init_array<C>();

    for (int i = C - 1; i > 0; i--)
    {
        std::swap(swapped_array[xor_hash % i], swapped_array[i]);
        hash = forrus::hash((uint8_t*) &hash);
        xor_hash = hash.lval ^ hash.hval;
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

        auto hash = forrus::hash((uint8_t*) &key);
        key.hval ^= hash.lval;
        key.lval ^= hash.hval;
    }

    return rval;
} 

// Used to generate the random bit tables
// T is the maximum number of bits the output will have
template <int T> 
inline std::array<std::array<uint8_t, 4>, (T - 8) / 4> gen_bit_tables(ykey_t key)
{
    auto last_tables = gen_bit_tables<T - 4>(forrus::hash((uint8_t*) &key));
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
    std::array<uint8_t, 16> transpos_table;
    std::array<uint8_t, 16> reverse_transpos_table;

    // Tables for what bits are random
    std::array<std::array<uint8_t, 4>, 6> randbit_tables;

    // The random shift data for the numbers
    duthomhas::csprng rng;
    
    // A block of data used to transpose
    uint32_t* transpose_copy;

    // The number of rounds that this starts at
    uint8_t round_start;
public: 
    YaoCipher(); 
    YaoCipher(ykey_t k);
    YaoCipher(ykey_t k, uint8_t round_start);
    ~YaoCipher() { delete[] transpose_copy; }

    // Encrypt a block
    uint32_t* encrypt_block(uint32_t* input);

    // Decrypt a block
    uint32_t* decrypt_block(uint32_t* input);
    
    // Encrypt a pointer of a certain size (HAS TO BE MULTIPLE OF 16 !!)
    uint32_t* encrypt(uint32_t* input, size_t size);

    // Decrypt a pointer of a certain size
    uint32_t* decrypt(uint32_t* input, size_t size);

private:
    // Does one round
    uint32_t* round(uint32_t* input, size_t round_ct);
    // Undoes a round
    uint32_t* unround(uint32_t* input, size_t round_ct);

    // Does substitution on a value based on the round count
    void substitute(uint8_t* input, size_t round_ct);
    // Does reverse substitution on a value based on the round count
    void reverse_substitute(uint8_t* input, size_t round_ct);
};
