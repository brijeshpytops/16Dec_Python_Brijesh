#include <stdio.h>

void main(){
    char old_filename[] = "sample.txt";
    char new_filename[]= "tops.txt";

    int res = rename(old_filename, new_filename);
    if (res == 0){
        printf("File renamed successfully.");
    }
}
