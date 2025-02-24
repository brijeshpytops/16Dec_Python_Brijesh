"""
syntax:

for variable in sequenes:
    statements
"""

# for num in range(1, 11):
#     print(num)

# name = "python"

# for ch in name:
#     print(ch)


name = "python"


# print(list(enumerate(name)))
# [(0, 'p'), (1, 'y'), (2, 't'), (3, 'h'), (4, 'o'), (5, 'n')]
# for index, ch in enumerate(name):
#     print(index, ch)


# *****
# *****
# *****
# *****
# *****

num = 5
for row in range(1, num+1):
    for col in range(1, num-row+1):
        print(" ", end=" ")
    for col in range(1, row+1):
        print("*", end=" ")
    for col in range(1, row):
        print("*", end=" ")
    print()
for row in range(1, num+1):
    for col in range(1, row+1):
        print(" ", end=" ")
    for col in range(1, num-row+1):
        print("*", end=" ")
    for col in range(1, num-row):
        print("*", end=" ")
    print()