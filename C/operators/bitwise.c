// 2^7 2^6 2^5 2^4 2^3 2^2 2^1 2^0
// 128 64  32  16   8   4   2   1

// Dec = 3 - Bin = 0011
// Dec = 5 - Bin = 0101
// Dec = 7 - 0111
// Dec = 15 - 1111
// Dec = 17 - 10001
// Dec = 114 - 1110010

// & | ^ ~ << >>
// a = 3
// b = 5

// A B & | ^ ~
// 0 0 0 0 0 1
// 0 1 0 1 1 1
// 1 0 0 1 1 0
// 1 1 1 1 0 0

// Operation	        Binary Result	                        Decimal Result
// ----------------------------------------------------------------------------------
// Original (a = 3)	00000000 00000000 00000000 00000011	    3
// 1's Complement	    11111111 11111111 11111111 11111100	    -4 (in 1's complement)
// 2's Complement	    11111111 11111111 11111111 11111101	    -3 (in 2's complement)

// a = 7 - 00000111
// a = a << 2 - 00011100 - 28
// a = a << 3 - 11100000 - 


#include <stdio.h>

void main() {
    int a = 3, b = 5, res, x = 7;
    // res = a & b;
    // printf("res(&): %d", res);
    // res = a | b;
    // printf("res(|): %d", res);
    // res = a ^ b;
    // printf("res(^): %d", res);
    // res = ~a;
    // printf("res(~): %d", res);
    
    x = x << 2;
    x = x << 3;
    printf("x << 2 = %d", x);
}