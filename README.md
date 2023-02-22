# Yao

Yao is a block based encryption system. It uses 32 bit value, 16 element wide blocks. It operates by repeating substitution and bitexpansion/randomisation over 6 rounds, and then shuffles the block elements around. 

## Installation
To start the installation process run 

    make

Then install xxHash. You can build it from source, or more instructions can be found at [https://github.com/Cyan4973/xxHash](https://github.com/Cyan4973/xxHash). 
To use the library include include/yao.h
Then when linking link xxHash/libxxHash and bin/libYao

