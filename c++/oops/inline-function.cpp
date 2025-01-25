#include <iostream>
using namespace std;

// Inline function to calculate the square of a number
inline int square(int x) {
    return x * x;
}

int main() {
    int num = 5;
    
    // Calling the inline function
    cout << "Square of " << num << " is: " << square(num) << endl;

    return 0;
}
