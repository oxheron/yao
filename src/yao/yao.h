#pragma once

// XXhash library
// Hopefully we will use our own hash at some point (forrus++)
#include "xxhash.h"

// Matrix 
#include "Eigen/Core"
#include "Eigen/Dense"

// std
#include <array>

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
std::array<uint8_t, C> gen_rnd_array(uint8_t* keyptr)
{
    auto hash = XXH3_128bits(keyptr, 16);
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
std::array<std::array<uint8_t, T>, R> gen_tables(uint8_t* keyptr)
{
    std::array<std::array<uint8_t, T>, R> rval;

    for (size_t i = 0; i < 6; i++)
    {
        // Xor keyptr by hash
        // Hash that again 
        rval[i] = gen_rnd_array<T>(keyptr);

        auto hash = XXH3_128bits(keyptr, 16);
        *((uint64_t*) keyptr) ^= hash.low64;
        *(((uint64_t*) keyptr) + 1) ^= hash.high64;
    }

    return rval;
} 

uint8_t* gen_key()
{   
    return new uint8_t[16];
}

// The main class for 
class YaoCipher
{
private:
    // The key (a pointer, its 128 bits)
    uint8_t* keyptr = nullptr;

    // Tables for substitution and tranposition
    std::array<std::array<uint8_t, 256>, 6> subst_tables;
    std::array<std::array<uint8_t, 16>, 6> transpos_tables;

    // The random shift data for the numbers

public: 
    YaoCipher(); 
    ~YaoCipher() { delete[] keyptr; }

    // Encrypt a block
    Eigen::Matrix<uint32_t, 4, 4> encrypt(const Eigen::Matrix<uint32_t, 4, 4>& input);
    // Encrypt a string
    std::string encrypt(const std::string& input);

    // Decrypt a block
    Eigen::Matrix<uint32_t, 4, 4> decrypt(const Eigen::Matrix<uint32_t, 4, 4>& input);
    // Decrypt a string
    std::string decrypt(const std::string& input);

private:
    // Does one round
    Eigen::Matrix<uint32_t, 4, 4> round(const Eigen::Matrix<uint32_t, 4, 4>& input);
    // Undoes one round
    Eigne::Matrix<uint32_t, 4, 4> unround(const Eigen::Matrix<uint32_t, 4, 4>& input);
};
