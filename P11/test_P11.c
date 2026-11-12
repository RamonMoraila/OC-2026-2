#include <stdio.h>

extern int str_len(char *str);

int main(){

    char str;

    printf("Ingrese una cadena:")
    scanf("%c",*str)

    int total = str_len(&str)

    printf("Total de caracteres: %d",total);
    
    return 0;

}