#include "yao/yao.h"

#include <iostream>
#include <algorithm>

using uint32_t = unsigned int;
using size_t = unsigned long long;

// N is the base interger
// Position is the index into n where bit will be inserted
uint32_t insert_bit(uint32_t n, size_t position, bool bit) 
{
    uint32_t y = n;
    uint32_t x = n << 1;
    if (new_bit)
        x |= (((uint32_t) 1) << position);
    else
        x &= ~(((uint32_t) 1) << position);
    x &= ((~((uint32_t) 0)) << position);
    y &= ~((~((uint32_t) 0)) << position);
    x |= y;
    return x;
}

YaoCipher::YaoCipher()
{
    key = gen_key();

    subst_tables = gen_tables<256, 6>(key);
    transpos_tables = gen_tables<16, 6>(key);
    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>);
    }
}

YaoCipher::YaoCipher(ykey_t k)
{
    key = k;

    subst_tables = gen_tables<256, 6>(key);
    transpos_tables = gen_tables<16, 6>(key);
    randbit_tables = gen_bit_tables<32>(key);

    // Make sure randbit tables are sorted highest to lowest
    for (auto array : randbit_tables)
    {
        std::sort(array.begin(), array.end(), std::greater<uint32_t>);
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
        // A bitset that has a fast operation to insert a bit and remove at the back
        input[i] = insert_bit(n, randbit_tables[round_ct][0], rng_bits[i * 4]);
        input[i] = insert_bit(n, randbit_tables[round_ct][1], rng_bits[i * 4 + 1]);
        input[i] = insert_bit(n, randbit_tables[round_ct][2], rng_bits[i * 4 + 2]);
        input[i] = insert_bit(n, randbit_tables[round_ct][3], rng_bits[i * 4 + 3]);
    }

    return input;
}

void YaoCipher::substitute(uint8_t* input, size_t round_ct)
{
    for (size_t i = 0; i < (round_ct + 1) / 2; i++)
    {
        (*(input + i)) = subst_tables[round_ct][*input + i];
    }
}
