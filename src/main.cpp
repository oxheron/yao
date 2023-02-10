#include <iostream>
#include "Eigen/Core"
#include "Eigen/Dense"

#include "yao/yao.h"

int main(void)
{
    Eigen::Matrix<uint32_t, 4, 4> mat4 {
        { 0,  1,  2,  3},
        { 4,  5,  6,  7},
        { 8,  9, 10, 11},
        {12, 13, 14, 15}
    };

    uint8_t* kptr = new uint8_t[16];
    memcpy(kptr, "123i27939823213", 16);

    auto array = gen_subst_tables(kptr);
    auto [t_8x8, t_6x6] = gen_transpos_tables(kptr);

    delete kptr;
}