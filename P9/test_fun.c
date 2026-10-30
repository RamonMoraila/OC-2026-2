#include <stdio.h>

extern int suma(int num1, int num2);

int main()
{
    int num1=32;
    int num2=16;

    int res= suma(num1,num2);

    printf("Resultado: %d \n",res);
    
    return 0;
}