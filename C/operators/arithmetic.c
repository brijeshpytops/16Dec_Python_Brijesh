#include <stdio.h>

void  main() {
    int num1 = 10; // initialization
    int num2 = 20;
    int res; // declaration
    
    res = num1 + num2;
    printf("Add: %d\n", res);
    res = num1 - num2;
    printf("Sub: %d\n", res);
    res = num1 * num2;
    printf("Mul: %d\n", res);
    res = num1 / num2;
    printf("Div: %d\n", res);
    res = num1 % num2;
    printf("Mod: %d\n", res);
}