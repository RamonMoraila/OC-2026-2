#include <stdio.h>

extern int str_len(char *str);

int main(){

    char oracion[]="Tortillas el pibe";

    int total = str_len(oracion);

    printf("Total de caracteres: %d\n",total);
    
    return 0;

}