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

    std::cout << mat4(0, 1) << std::endl;

    auto array = gen_subst_table((uint8_t*) "123i27939823213");
    for (uint8_t x : array)
    {
        std::cout << (int) x << std::endl;
    }
}