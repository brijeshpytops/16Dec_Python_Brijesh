# F. Identity operators
#     - Is (is)
#     - Is not (is not)

# Is operator: It checks if two variables refer to the same object.

num1 = 10

num2 = 10

print(num1 is num2)  # Output: True

print(id(num1))

print(id(num2))

# Is not operator: It checks if two variables do not refer to the same object.

num3 = 10

num4 = "10"

print(num3 is num4)  # Output: False

print(id(num3))
print(id(num4))