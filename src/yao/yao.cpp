#include "yao/yao.h"

#include <iostream>

YaoCipher::YaoCipher()
{
    key = gen_key();

    subst_tables = gen_tables<256, 6>(key);
    transpos_tables = gen_tables<16, 6>(key);
    randbit_tables = gen_bit_tables<32>(key);
}

YaoCipher::YaoCipher(ykey_t k)
{
    key = k;

    subst_tables = gen_tables<256, 6>(key);
    transpos_tables = gen_tables<16, 6>(key);
    randbit_tables = gen_bit_tables<32>(key);
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
    size_t mixin = rng();
    for (size_t i = 0; i < input.size(); i++)
    {
        uint32_t bit_combine = 0;
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
