#include "include/yao.h"

// std
#include <iostream>
#include <chrono>
#include <vector>
#include <sstream>
#include <fstream>

struct Timer 
{
    std::chrono::time_point<std::chrono::high_resolution_clock> s;

    void set_time() { s = std::chrono::high_resolution_clock::now(); }
    void print_time() { std::cout << (std::chrono::high_resolution_clock::now() - s).count() << std::endl; }
    auto get_time() { return (std::chrono::high_resolution_clock::now() - s).count(); }
};

int main(void)
{
    // YaoCipher encrypt({12093, 12398});
    
    // Timer timer;
    // timer.set_time();
    // std::vector<uint32_t> test = {23, 123, 98, 28, 123, 89, 23, 2, 74, 23, 123, 98, 28, 123, 89, 23, 2, 74};
    // encrypt.encrypt(test.data(), 16);
    // timer.print_time();

    // encrypt.decrypt(test.data(), 16);

    // for (auto x : test)
    // {
    //     std::cout << x << std::endl;
    // }

    YaoCipher encrypt({1203, 12398}, 2);
    std::vector<uint32_t> input;
    std::ifstream t("src/yao/yao.cpp");
    std::stringstream buffer;
    buffer << t.rdbuf();

    for (size_t i = 0; i < buffer.str().size(); i+=2)
    {
        input.push_back(buffer.str()[i]);
        input.back() |= (buffer.str()[i + 1] << 8);
    }

    for (auto &x : input)
    {
        std::cout << *((uint8_t*) &x) << *(((uint8_t*) &x) + 1);
    }

    input.resize(input.size() + 16 - input.size() % 16);
    
    Timer timer;
    timer.set_time();
    encrypt.encrypt(input.data(), input.size());
    std::cout << "Encrypt time" << timer.get_time() << std::endl; 

    std::cout << "0x";
    
    for (auto x : input)
    {
        std::cout << std::hex << x;
    }

    encrypt.decrypt(input.data(), input.size());
    for (auto &x : input)
    {
        std::cout << *((uint8_t*) &x) << *(((uint8_t*) &x) + 1);
    }
}
