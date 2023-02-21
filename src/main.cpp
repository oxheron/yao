#include "yao/yao.h"

// std
#include <iostream>
#include <chrono>
#include <vector>

struct Timer 
{
    std::chrono::time_point<std::chrono::high_resolution_clock> s;

    void set_time() { s = std::chrono::high_resolution_clock::now(); }
    void print_time() { std::cout << (std::chrono::high_resolution_clock::now() - s).count() << std::endl; }
    auto get_time() { return (std::chrono::high_resolution_clock::now() - s).count(); }
};

int main(void)
{
    YaoCipher encrypt({12093, 12398});
    
    Timer timer;
    timer.set_time();
    std::vector<uint32_t> test = {23, 123, 98, 28, 123, 89, 23, 2, 74, 23, 123, 98, 28, 123, 89, 23, 2, 74};
    encrypt.encrypt(test.data(), 16);
    timer.print_time();

    encrypt.decrypt(test.data(), 16);

    for (auto x : test)
    {
        std::cout << x << std::endl;
    }
}