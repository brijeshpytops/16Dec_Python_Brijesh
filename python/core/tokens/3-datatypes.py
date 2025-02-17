# A data type in Python is a classification that specifies which type of value a variable has and what type of operations can be performed on it. Python supports various built-in data types.


# Some common data types in Python include:

# 1. Integers: These are whole numbers, such as -5, 0, 123.

# 2. Floats: These are numbers with a decimal point, such as 3.14, -2.718.

# 3. Booleans: These are logical values, either True or False.

# 4. Strings: These are sequences of characters, such as "Hello, World!" or "AI is fun!".

# 5. Lists: These are ordered collections of items, such as [1, 2, 3, 4, 5].

# 6. Tuples: These are ordered collections of items, but they are immutable, meaning you cannot change their values once they are created. For example, (1, 2, 3, 4, 5).

# 7. Sets: These are unordered collections of unique items, such as {1, 2, 3, 4, 5}.

# 8. Dictionaries: These are unordered collections of key-value pairs, such as {"name": "Alice", "age": 25}.

# 9. None: The None value represents the absence of a value. It is often used to indicate that a variable has no value or that a function has returned no value.

# To check the data type of a variable in Python, you can use the type() function. For example:


num = 10

print(type(num))  # Output: <class 'int'>


name = "Alice"

print(type(name))  # Output: <class'str'>


# Note: The type() function returns the type of the object, not the type of the variable. If you want to check the type of a variable, you can use the variable itself, without using the type() function. For example:

# num = 10

# print(num.__class__)  # Output: <class 'int'>


# class Math:
#     pass

# print(Math().__class__)


# types of typecasting in python

# Type casting is the process of converting one data type to another. It allows us to work with different data types in a consistent manner. Here are some common type casting in Python:

# 1. implicit typecasting:

# Example:

# num = 10

# result = num + 3.5 # float

# print(result)  # Output: 13.5


# 2. explicit typecasting:

# Example:


# num = 10

# result = str(num) + " is an integer"

# print(result)  # Output: 10 is an integer


# num = 10

# f = float(num)

# print(f) # 10.0
