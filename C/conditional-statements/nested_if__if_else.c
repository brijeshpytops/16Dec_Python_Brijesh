#include <stdio.h>

int main() {
    int age;
    float weight;
    
    printf("Enter your age: ");
    scanf("%d", &age);
   
    
    // printf("age: %d, weight: %f", age, weight);
    if (age >= 18){
        printf("Enter your weight: ");
        scanf("%f", &weight);
        if(weight >= 50){
            printf("You can donate");
        } else {
            printf("You can not donate");
        }
    } else {
        printf("You can not donate");
    }
    return 0;
}