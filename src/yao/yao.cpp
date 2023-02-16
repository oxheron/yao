#include "yao/yao.h"

#include <iostream>
#include <algorithm>
#include <bitset>

// N is the base interger
// Position is the index into n where bit will be inserted
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

YaoCipher::YaoCipher()
{
    key = gen_key();

    // Generate the subsitution tables and the inverse substitution tables
    subst_tables = gen_tables<256, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 256; j++)
        {
            reverse_subst_tables[i][subst_tables[i][j]] = j;
        }
    }

    // Generate transposition tables and inverse transposition tables
    transpos_tables = gen_tables<16, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 16; j++)
        {
            reverse_transpos_tables[i][transpos_tables[i][j]] = j;
        }
    }

    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>());
    }
}

YaoCipher::YaoCipher(ykey_t k)
{
    uint32_t test = 5;
    uint32_t output = remove_bit(test, 2);
    std::cout << output << std::endl;
    std::cout << "space" << std::endl;

    key = k;

    // Generate the subsitution tables and the inverse substitution tables
    subst_tables = gen_tables<256, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 256; j++)
        {
            reverse_subst_tables[i][subst_tables[i][j]] = j;
        }
    }
    
    // Generate transposition tables and inverse transposition tables
    transpos_tables = gen_tables<16, 6>(key);
    for (size_t i = 0; i < 6; i++)
    {
        for (size_t j = 0; j < 16; j++)
        {
            reverse_transpos_tables[i][transpos_tables[i][j]] = j;
        }
    }

    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>());
    }
}

// Subsitution, transposition, bitexpand
block YaoCipher::round(block& input, size_t round_ct)
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
        std::cout << "input[i]: " << input[i] << ", ";
        // A bitset that has a fast operation to insert a bit and remove at the back
        std::cout << "randbit[0]: " << (int) randbit_tables[round_ct][0] << ", ";
        std::cout << "randbit[1]: " << (int) randbit_tables[round_ct][1] << ", ";
        std::cout << "randbit[2]: " << (int) randbit_tables[round_ct][2] << ", ";
        std::cout << "randbit[3]: " << (int) randbit_tables[round_ct][3] << ", ";
        input[i] = insert_bit(input[i], randbit_tables[round_ct][0], rng_bits[i * 4]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][1], rng_bits[i * 4 + 1]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][2], rng_bits[i * 4 + 2]);
        input[i] = insert_bit(input[i], randbit_tables[round_ct][3], rng_bits[i * 4 + 3]);
        std::cout << "output[i]: " << input[i] << std::endl;
    }

    return input;
}

// Unbitexpand, untranspose, unsubsitute
block YaoCipher::unround(block& input, size_t round_ct)
{
    // Unbitexpand
    for (size_t i = 0; i < input.size(); i++)
    {
        std::cout << "input[i]: " << input[i] << ", ";
        // A bitset that has a fast operation to insert a bit and remove at the back
        input[i] = remove_bit(input[i], randbit_tables[round_ct][0]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][1]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][2]);
        input[i] = remove_bit(input[i], randbit_tables[round_ct][3]);
        std::cout << "output[i]: " << input[i] << std::endl;
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

void YaoCipher::substitute(uint8_t* input, size_t round_ct)
{
    for (size_t i = 0; i < (round_ct + 3) / 2; i++)
    {
        (*(input + i)) = subst_tables[round_ct][*input + i];
    }
}

void YaoCipher::reverse_substitute(uint8_t* input, size_t round_ct)
{
    for (size_t i = 0; i < (round_ct + 3) / 2; i++)
    {
        (*(input + i)) = reverse_subst_tables[round_ct][*input + i];
    }
}