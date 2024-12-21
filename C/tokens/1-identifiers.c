// what is identifiers in c and their rules?

// Identifiers in C are names given to entities like variables, functions, and types. They are used to uniquely identify these entities.

// Here are some rules for identifiers in C:

1. Identifiers in includes latters [a-z, A-Z], digits [0-9] and _.
2. The first character of an identifier must be a letter or an underscore.. this means you can not start with digits.
3. Identifiers are case-sensitive. "Hello" and "hello" are different identifiers.
4. Identifiers cannot be a reserved word[keywors] in C. A reserved word is a keyword that has a predefined meaning in C. Examples of reserved words include int, float, double, char, for, while, if, else, do, return, etc.
5. white-space are not allowed. Example, first name, first_name, FirstName, firstname....
6. Identifiers cannot contain special characters such as $, %, &, *, +, -, /, <, >, =, , ;, {, }, [, ], (, ), #, @, !, ~, ` are not allowed.
7. Identifiers cannot start with a digit. For example, 123abc is not a valid identifier.

Here are some examples of valid and invalid identifiers in C:

Valid identifiers:

int a, b, c;

float pi = 3.14;

double x, y, z;

char ch = 'A';

float my_float;

Valid identifiers with underscore:

int my_age, my_score;

float my_pi;

char my_char;

Valid identifiers with mixed case:

int MyAge, myScore;

float MyPi;

char MyChar;

Invalid identifiers:

1. int 123abc; (starts with a digit)

2. int my-age; (contains hyphen)

3. int my@age; (contains special character)

4. int my*age; (contains special character)

5 int total price (containe white-space)


// age = 50

// indetifiers case:

1] snack_case : total_price, my_exam_level
2] camelCase : totalPrice, myExamLevel
3] PascalCase: TotalPrice, MyExamLevel
4] kebab-case : total-price, my-exam-level - not allowed in c

// indetifiers with special characters:

