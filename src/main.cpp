#include "yao/yao.h"

// std
#include <iostream>
#include <chrono>

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

    block testi = {'a', '3', 'g', '3', '1', 'b', 'X', 'A', 'a', '3', 'g', '3', '1', 'b', 'X', 'A'};
    
    Timer timer;
    timer.set_time();
    encrypt.encrypt(testi);
    timer.print_time();
    encrypt.decrypt(testi);
    
    timer.set_time();
    timer.print_time();

    for (auto x : testi)
    {
        std::cout << (char) x << ", ";
    }

}