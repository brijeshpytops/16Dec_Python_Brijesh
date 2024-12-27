// switch (exp) {
//     case 1:
//         printf("Case 1\n");
//         break;
//     case 2:
//         printf("Case 2\n");
//         break;
//     default:
//         printf("Default case\n");
//         break;
// }


#include <stdio.h>

int main() {
    int day;
    
    // 0 - Mon, 1 - tus, .... 6 - Sun
    
    printf("Enter your day: ");
    scanf("%d", &day);
        
    switch (day - 1){
        case 0:
            printf("Today is Mon");
            break;
        case 1:
            printf("Today is Tue");
            break;
        case 2:
            printf("Today is Wed");
            break;
        case 3:
            printf("Today is Thu");
            break;
        case 4:
            printf("Today is Fri");
            break;
        case 5:
            printf("Today is Sat");
            break;
        case 6:
            printf("Today is Sun");
            break;
        default:
            printf("Invalid day");
        
    }
    
    return 0;
}