#include <stdio.h>

int main() {
    int num1 = 10, num2 = 20;
    int res; // 0 - False, 1 - True
    
    res = num1 == num2;
    // printf("== : %d", res);
    res = num1 != num2;
    // printf("!= : %d", res);
    res = num1 < num2;
    // printf("< : %d", res);
    res = num1 <= num2;
    //printf("<= : %d", res);
    res = num1 > num2;
    //printf("> : %d", res);
    res = num1 >= num2;
    printf(">= : %d", res);
    
}