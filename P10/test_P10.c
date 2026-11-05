#include <stdio.h>
#include <stdint.h>

extern void pBin8b(uint8_t numero);
extern void pBin16b(uint16_t numero2);
extern void pBin32b(uint32_t numero3);

int main()
{
    pBin8b(0x23);

    printf(" :Valor 23h en binario");

    printf("\n");

    pBin16b(0x563);

    printf(" :Valor 563h en binario");

    printf("\n");

    pBin32b(0xBAD6);

    printf(" :Valor BAD6h en binario");

    printf("\n");
    
    return 0;
}