#include "include/yao.h"

// Rng library
#include "csprng/duthomhas/csprng.hpp"

// std
#include <iostream>
#include <algorithm>
#include <bitset>
#include <vector>
#include <cstring>
#include <chrono>

struct Timer 
{
    std::chrono::time_point<std::chrono::high_resolution_clock> s;

    void set_time() { s = std::chrono::high_resolution_clock::now(); }
    void print_time() { std::cout << (std::chrono::high_resolution_clock::now() - s).count() << std::endl; }
    auto get_time() { return (std::chrono::high_resolution_clock::now() - s).count(); }
};

YaoCipher::YaoCipher()
{
    key = gen_key();
    this->round_start = 0;
    transpose_copy = new uint32_t[16];

    // Generate the subsitution tables and the inverse substitution tables
    subst_tables = gen_tables<256, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 256; j++)
        {
            reverse_subst_tables[i][subst_tables[i][j]] = j;
        }
    }

    // Generate 4 bit substitution tables and the inverses
    subst_tables_4 = gen_tables<16, 3>(key);
    for (size_t i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 16; j++)
        {
            rv_subst_tables_4[i][subst_tables_4[i][j]] = j;
        }
    }
    
    // Generate transposition tables and inverse transposition tables
    ykey_t flipkey;
    flipkey.lval = key.hval;
    flipkey.hval = key.lval;
    transpos_table = gen_rnd_array<16>(key);

    for (size_t i = 0; i < 16; i++)
    {
        reverse_transpos_table[transpos_table[i]] = i;
    }

    // Generate bit expansion bits (the bits that will be random)
    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>());
    }
}

YaoCipher::YaoCipher(ykey_t k)
{
    key = k;
    this->round_start = 0;
    transpose_copy = new uint32_t[16];

    // Generate the subsitution tables and the inverse substitution tables
    subst_tables = gen_tables<256, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 256; j++)
        {
            reverse_subst_tables[i][subst_tables[i][j]] = j;
        }
    }

    // Generate 4 bit substitution tables and the inverses
    subst_tables_4 = gen_tables<16, 3>(key);
    for (size_t i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 16; j++)
        {
            rv_subst_tables_4[i][subst_tables_4[i][j]] = j;
        }
    }
    
    // Generate transposition tables and inverse transposition tables
    ykey_t flipkey;
    flipkey.lval = key.hval;
    flipkey.hval = key.lval;
    transpos_table = gen_rnd_array<16>(key);

    for (size_t i = 0; i < 16; i++)
    {
        reverse_transpos_table[transpos_table[i]] = i;
    }

    // Generate bit expansion bits (the bits that will be random)
    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>());
    }
}

YaoCipher::YaoCipher(ykey_t k, uint8_t round_start)
{
    key = k;
    this->round_start = round_start;
    transpose_copy = new uint32_t[16];

    // Generate the subsitution tables and the inverse substitution tables
    subst_tables = gen_tables<256, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 256; j++)
        {
            reverse_subst_tables[i][subst_tables[i][j]] = j;
        }
    }

    // Generate 4 bit substitution tables and the inverses
    subst_tables_4 = gen_tables<16, 3>(key);
    for (size_t i = 0; i < 3; i++)
    {
        for (size_t j = 0; j < 16; j++)
        {
            rv_subst_tables_4[i][subst_tables_4[i][j]] = j;
        }
    }
    
    // Generate transposition tables and inverse transposition tables
    ykey_t flipkey;
    flipkey.lval = key.hval;
    flipkey.hval = key.lval;
    transpos_table = gen_rnd_array<16>(key);

    for (size_t i = 0; i < 16; i++)
    {
        reverse_transpos_table[transpos_table[i]] = i;
    }

    // Generate bit expansion bits (the bits that will be random)
    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>());
    }
}

uint32_t* YaoCipher::round(uint32_t* input, size_t round_ct)
{
    // Timer t;
    // t.set_time();
    // Subsitute
    for (size_t i = 0; i < 16; i++)
    {
        substitute((uint8_t*) (input + i), round_ct);
    }
    // std::cout << "substitution: " << t.get_time() << std::endl;
    // t.set_time();

    // Bitexpand
    std::bitset<64> rng_bits = rng->operator()();
    for (size_t i = 0; i < 16; i++)
    {
        // A bitset that has a fast operation to insert a bit and remove at the back
        input[i] = insert_bit(input[i], randbit_tables[round_ct][0], rng_bits[i * 4]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][1], rng_bits[i * 4 + 1]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][2], rng_bits[i * 4 + 2]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][3], rng_bits[i * 4 + 3]);
    }
    //std::cout << "bitexpand: " << t.get_time() << std::endl;

    return input;
}

// Undoes one round
uint32_t* YaoCipher::unround(uint32_t* input, size_t round_ct)
{
    // Unbitexpand
    for (size_t i = 0; i < 16; i++)
    {
        // A bitset that has a fast operation to insert a bit and remove at the back
        input[i] = remove_bit(input[i], randbit_tables[round_ct][3]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][2]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][1]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][0]);
    }

    // Reverse subsitute
    for (size_t i = 0; i < 16; i++)
    {
        reverse_substitute((uint8_t*) (input + i), round_ct);
    }

    return input;
}

uint32_t* YaoCipher::encrypt_block(uint32_t* input)
{
    for (size_t i = round_start; i < 6; i++)
    {
        round(input, i);
    }

    memcpy(transpose_copy, input, 64);
    for (size_t i = 0; i < 16; i++)
    {
        input[i] = transpose_copy[transpos_table[i]];
    }

    return input;
}

uint32_t* YaoCipher::decrypt_block(uint32_t* input)
{
    for (int i = 5; i >= this->round_start; i--)
    {
        input = unround(input, i);
    }

    memcpy(transpose_copy, input, 64);
    for (size_t i = 0; i < 16; i++)
    {
        input[i] = transpose_copy[reverse_transpos_table[i]];
    }

    return input;
}

uint32_t* YaoCipher::encrypt(uint32_t* input, size_t size)
{   
    for (size_t i = 0; i < size; i+=16)
    {
        encrypt_block(input + i);
    }

    return input;
}

uint32_t* YaoCipher::decrypt(uint32_t* input, size_t size)
{   
    for (size_t i = 0; i < size; i+=16)
    {
        decrypt_block(input + i);
    }

    return input;
}


void YaoCipher::substitute(uint8_t* input, size_t round_ct)
{
    size_t even_round_ct = round_ct % 2 == 1 ? round_ct - 1 : round_ct;
    for (size_t i = 0; i < (even_round_ct + 2) / 2; i++)
    {
        (*(input + i)) = subst_tables[round_ct][*(input + i)];
    }
    // Odd number of bits substitution tables
    if (round_ct % 2 == 1)
    {
        (*(input + (round_ct + 1) / 2)) = subst_tables_4[round_ct / 2][(*(input + (round_ct + 1) / 2))];
    }
}

void YaoCipher::reverse_substitute(uint8_t* input, size_t round_ct)
{
    size_t even_round_ct = round_ct % 2 == 1 ? round_ct - 1 : round_ct;
    for (size_t i = 0; i < ((even_round_ct + 2) / 2); i++)
    {
        (*(input + i)) = reverse_subst_tables[round_ct][*(input + i)];
    }
    if (round_ct % 2 == 1) 
    {
        (*(input + (round_ct + 1) / 2)) = rv_subst_tables_4[round_ct / 2][(*(input + (round_ct + 1) / 2))];
    }
}