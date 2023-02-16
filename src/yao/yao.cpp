#include "yao/yao.h"

YaoCipher::YaoCipher()
{
    keyptr = gen_key();

    subst_tables = gen_tables<256, 6>;
    transpos_tables = gen_tables<16, 6>;
}


