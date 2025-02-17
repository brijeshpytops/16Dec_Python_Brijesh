# D. Logical operators
#     - AND (and)
#     - OR (or)
#     - NOT (not)

A B C and or
------------
T T T T   T
F T T F   T
T F T F   T
T T F F   T
F F F F   F


A not
T F
F T


# Example:

print(True and True)  # Output: True

print(True and False)  # Output: False

print(False and True)  # Output: False

print(False and False)  # Output: False

print("---")

print(True or True)  # Output: True

print(True or False)  # Output: True

print(False or True)  # Output: True

print(False or False)  # Output: False

print("---")

print(not True)  # Output: False

print(not False)  # Output: True