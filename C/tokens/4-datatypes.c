// what is datatypes in c?

// Data types in C refer to the type of data that a variable can store, determining the size and layout of memory, the range of values, and the operations that can be performed on the variable.

// Here are some common data types in C:

// 1. Integer types: Example, pages = 300, age= 23

// 2. Floating-point types: Example, price = 19.99, radius = 5.0

// 3. Character types: Example, grade = 'A', character = 'X'

// 4. Boolean type: Example, isPrime = true/1, isEven = false/0

// 5. Void type: Example, void main() { }

// 6. string type: Example technology = "Python"



// type casting :

// #include <stdio.h>

// void main() {
//     int a = 3;
//     float b;
//     b = (float)a;
//     printf("%f", b);
// }

// What are the format specifiers, sizes, and ranges for basic data types in c?

// ▣ %c (character):

// • Corresponding Data Type: char
// • Size: 1 byte
// • Range: -128 to 127 (signed) or 0 to 255 (unsigned)

// ▣ %d (integer):

// • Corresponding Data Type: int
// • Size: 4 bytes
// • Range: -2,147,483,648 to 2,147,483,647 [Max signed 32-bit integer]

// ▣ %u (unsigned integer):

// • Corresponding Data Type: unsigned int
// • Size: 4 bytes
// • Range: 0 to 4,294,967,295 [  unsigned 32-bit integer ]

// ▣ %ld (long integer):

// • Corresponding Data Type: long int
// • Size: 4 bytes
// • Range: -2,147,483,648 to 2,147,483,647

// ▣ %lu (unsigned long integer):

// • Corresponding Data Type: unsigned long int
// • Size: 4 bytes
// • Range: 0 to 4,294,967,295

// ▣ %lld (long long integer):

// • Corresponding Data Type: long long int
// • Size: 8 bytes
// • Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807

// ▣ %llu (unsigned long long integer):

// • Corresponding Data Type: unsigned long long int
// • Size: 8 bytes
// • Range: 0 to 18,446,744,073,709,551,615

// ▣ %f (float):

// • Corresponding Data Type: float
// • Size: 4 bytes
// • Range: Approximately 1.2E-38 to 3.4E+38 (6 decimal places of precision)

// ▣ %lf (double):

// • Corresponding Data Type: double
// • Size: 8 bytes
// • Range: Approximately 2.3E-308 to 1.7E+308 (15 decimal places of precision)

// ▣ %Lf (long double):

// • Corresponding Data Type: long double
// • Size: 10 bytes (on most platforms)
// • Range: Approximately 3.4E-4932 to 1.1E+4932 (19 decimal places of precision)

// ▣ %s (string):

// • Corresponding Data Type: char[] or char*
// • Size: Depends on the length of the string (variable)

// ▣ %p (pointer):

// • Corresponding Data Type: void*
// • Size: Depends on the system architecture (e.g., 4 bytes on 32-bit systems, 8 bytes on 64-bit systems)