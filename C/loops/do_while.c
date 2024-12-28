#include <stdio.h>

int main() {
    int start = 1, end = 10, table = 1;
    do {
        printf("%d * %d = %d\n", table, start, table*start);
        // start++;
        // start= start + 1;
        // start += 1;
    }while(start <= end);
    return 0;
}