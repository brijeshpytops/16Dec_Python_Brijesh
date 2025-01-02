
#include <stdio.h>

int main() {
    int matrix1[3][3] = {
        {1,2,3},
        {4,5,6},
        {7,8,9}
    };
    
    int matrix2[3][3] = {
        {11,22,33},
        {44,55,66},
        {77,88,99}
    };
    
    int le_row = sizeof(matrix1)/sizeof(matrix1[0]);
    int le_col = sizeof(matrix1[0])/sizeof(matrix1[0][0]);
    
    // printf("Row: %d\n", le_row);
    // printf("Col: %d", le_col);
    
    // for(int row = 1; row<=le_row; row++){
    //     for(int col = 1; col <= le_col; col++){
    //         printf("%d ", matrix[row-1][col-1]);
    //     }
    //     printf("\n");
    // }
    
    // Sum of matrix1 + matrix2
    // for(int row = 1; row<=le_row; row++){
    //     for(int col = 1; col <= le_col; col++){
    //         printf("%d ", matrix1[row-1][col-1]+ matrix2[row-1][col-1]);
    //     }
    //     printf("\n");
    // }
    // Mul of matrix1 * matrix2
    // for(int row = 1; row<=le_row; row++){
    //     for(int col = 1; col <= le_col; col++){
    //         printf("%d ", matrix1[row-1][col-1]* matrix2[row-1][col-1]);
    //     }
    //     printf("\n");
    // }
    return 0;
}