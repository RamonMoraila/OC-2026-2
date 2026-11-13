#include <stdio.h>

extern int str_len(char *str);
extern int clrBit(int value, int nbit);

int main(){

    char oracion[]="Tortillas el pibe";

    int total = str_len(oracion);

    printf("Total de caracteres: %d\n",total);

    int value = 15;
    int nbit = 8;

    int res= clrBit(value,nbit);

    printf("Nuevo resultado: %d\n",res);
    
    return 0;

}