#include <iostream>
using namespace std;

class ATM{
    int PIN = 1234;
    friend void usePrivateClassPIN(const ATM& o);
};

void usePrivateClassPIN(const ATM& o){
    cout<<o.PIN;
};

int main() {
    ATM a1;
    
    usePrivateClassPIN(a1);
    
    return 0;
}