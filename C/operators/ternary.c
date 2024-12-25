#include <stdio.h>

int main() {

    // (condition)?True:False;
   
    int bal = 1000, withdrow = 500;
    (withdrow <= bal)?printf("Balance withdrow successfully.\nRemaining balance is %d", bal - withdrow):printf("Insufficent balance");
}