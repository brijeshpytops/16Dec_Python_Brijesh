# what is while loop in python?

# A while loop is a control flow statement that allows you to execute a block of code as long as a condition is true. It iterates until the specified condition becomes false.

# Syntax:

# while(condition):
#     statements

# Example:

table = 4
start = 1
end = 10

# Infinite loop
# while start <= end:
#     print("brijesh")

# Printing multiplication table using while loop

# Finite loop
# while start <= end:
#     print("brijesh")
#     start += 1 # assignment operator
    

# while start <= end:
#     # print(f"{table} x {start} = {table * start}")  # formatted string
#     # print(table, "*", start, "=", table*start)
#     start += 1
    

# print("*")
# print("**")
# print("***")
# print("****")
# print("*****")

# in_start = start
# in_end = end
# while(start <= end):
#     print('-')
#     while(in_start <= in_end):
#         print('=')
#         print("*", end=" ")
#         in_start += 1
#     start += 1

# * * * * *
# * * * * *
# * * * * *
# * * * * *
# * * * * *

# start = 1
# end = 5

# while(start <= end):
#     s = 1
#     e = 5
#     while(s <= e):
#         print('*', end=" ")
#         s += 1
#     print()
#     start += 1

# * 
# * * 
# * * *
# * * * *
# * * * * *

# start = 1
# end = 5

# while(start <= end):
#     s = 1
#     e = 5
#     while(s <= start):
#         print('*', end=" ")
#         s += 1
#     print()
#     start += 1