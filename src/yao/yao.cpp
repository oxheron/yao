#include "yao/yao.h"

#include <iostream>
#include <algorithm>
#include <bitset>
#include <vector>

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
    flipkey.low64 = key.high64;
    flipkey.high64 = key.low64;
    transpos_tables = gen_tables<16, 6>(flipkey);
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
    flipkey.low64 = key.high64;
    flipkey.high64 = key.low64;
    transpos_tables = gen_tables<16, 6>(flipkey);
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

std::string YaoCipher::encrypt(const std::string& input)
{
    for (size_t i = 0; i < input.size(); i++)
    {
        if (input.size() - i < 16) 
        {
            std::vector<char> split(0, 16);
            for (size_t j = i * 16; j < input.size(); j++)
            {
                split[j - i * 16] = input[j];
            }


            encrypt(split);
        }
        // Use std::vector<std::ref_wrapper>
        std::vector<char> split(input.data() + i * 16)
        split.resize(16);
        encrypt(split);
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