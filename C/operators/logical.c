// A B C && ||
// T T T T  T
// F T T F  T
// T F T F  T
// T T F F  T
// F F F F  F

// A !
// T F
// F T


#include <stdio.h>

int main() {
    
    int c1 = 0; // false
    int c2 = 1; // true
    int c3 = c1 == c2;  // false
    int c4 = 10 < 100; // true
    int res;
    // res = c1 && c2; // false
    // res = c1 && c4 && c3 && c4 || c1;
    
    // res = c1 || c2 && c3 || c4;
    
    // res = 10 / 20 * 30 - 40;
    
    // res = ! c4;
    printf("%d", res);
    
}