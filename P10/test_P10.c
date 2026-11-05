#include <stdio.h>
#include <stdint.h>

extern void pBin8b(uint8_t numero);

int main()
{
    pBin8b(0x23);

    printf(" :Valor 23h en binario");

    printf("\n");

    return 0;
}