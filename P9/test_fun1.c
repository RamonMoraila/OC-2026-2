#include <stdio.h>

extern int mystrcmp(char *str1, char *str2);

int main()
{
    char str1[]="Empanadas";
    char str2[]="Empanadas";

    int sul = mystrcmp(str1, str2);

    printf("Resultado: %d \n",sul);

    return 0;
}