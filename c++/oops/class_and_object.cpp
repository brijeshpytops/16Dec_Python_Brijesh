// #include <iostream>
// using namespace std;

// // syntax of class

// // class class_name{
//     // data member
//     //member function
// // };

// // class defination
// class person{
//     public: // access specifiers:
//     // data member [attribute and property]
//     string name = "brijesh";
//     int age = 28;
//     // private:
//     // member function [method and behaviour]
//     void information(){
//         cout<<"Person name is "<<name<<" and age is "<<age;
//     }
// };

// int main() {
    
//     // class_name obj1, obj2...,objn;
    
//     person p1;
//     // access data member
//     cout<<p1.name<<endl;
//     cout<<p1.age<<endl;
//     p1.information();
   

//     return 0;
// }



#include <iostream>
using namespace std;

// syntax of class

// class class_name{
    // data member
    //member function
// };

// class defination
class person{
    public: // access specifiers:
    // data member [attribute and property]
    string name;
    int age;
    // private:
    // member function [method and behaviour]
    void information(){
        cout<<"Person name is "<<name<<" and age is "<<age<<endl;
    }
};

int main() {
    
    // class_name obj1, obj2...,objn;
    
    // person p1, p2;
    // // set values
    
    // p1.name = "brijesh";
    // p1.age = 28;
    
    // // access data member
    // cout<<p1.name<<endl;
    // cout<<p1.age<<endl;
    // p1.information();
    
    // p2.name = "eric";
    // p2.age = 30;
    
    // cout<<p2.name<<endl;
    // cout<<p2.age<<endl;
    // p2.information();
    
    while(1){
        person p;
        string n;
        int a;
        
        cout<<"Enter your name: ";
        cin>>n;
        
        cout<<"Enter your age: ";
        cin>>a;
        
        p.name = n;
        p.age = a;
        
        cout<<p.name<<endl;
        cout<<p.age<<endl;
        p.information();
    }

    return 0;
}