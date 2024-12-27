if (condition-1) {
    // code block
} else if (condition-2) {
    // code block
} else if (condition-3) {
    // code block
}.... else {
    // code block
}

#include <stdio.h>

int main() {
    float pr;
    
    printf("Enter your pr: ");
    scanf("%f", &pr);
    
    if (pr >= 0 && pr <= 100){
        if (pr >= 80){
            printf("Class A");
        } else if (pr >= 60){
            printf("Class B");
        } else if (pr >= 40){
            printf("Class C");
        } else {
            printf("Sorry, You are failed");
        }
    } else {
        printf("Invalid PR. Please enter a valid PR between 0 to 100");
    }
    
    
    return 0;
}