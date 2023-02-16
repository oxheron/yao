#include <iostream>

#include "yao/yao.h"

int main(void)
{
    YaoCipher encrypt({12093, 12398});

    block testi = {'a', '3', 'g', '3', '1', 'b', 'X', 'A', 'a', '3', 'g', '3', '1', 'b', 'X', 'A'};
    auto array = encrypt.round(testi, 0);
    for (auto x : array)
    {
        std::cout << (char) x << ", ";
    }

    std::cout << "\n" << std::endl;

    auto reverse = encrypt.unround(array, 0);
    for (auto x : reverse)
    {
        std::cout << (char) x << ", ";
    }

}