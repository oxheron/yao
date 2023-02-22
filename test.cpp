unsigned int insert_bit(unsigned int n, unsigned long position, bool bit) 
{
    // Get top and bottom, change top bit of bottom
    /* 
    bottom = (1 << position) - 1
    top = ~((1 << position + 1) - 1
    bottom || bit << position || (top << 1)
    */
}

unsigned int other_inst_bits(unsigned int n, unsigned long position, bool bit)
{
    
}