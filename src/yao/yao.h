#pragma once

#include <array>

// Generate the initial array of 0 - 255
// Constexpr
constexpr std::array<uint8_t, 256> gen_init_array();

// Generate a substitution tables
// K1 and K2 are the 128 bit key broken up
std::array<uint8_t, 256> gen_subst_table(uint8_t* key);
std::array<std::array<uint8_t, 256>, 16> gen_subst_tables(uint8_t* key);