"""
What is function? 

- A block of code that performs a specific task.

- A collection of statements that performs a specific task.

there are two types of functions int python:

- built-in functions
- user-defined functions


syntax :

def function_name(paras..):
    statements


function_name(values)

"""

# def greet(name):
#     print(f"Hello {name}")

# greet(input("enter your name: "))

# para's types:

# positional para
# def add(a, b, c):
#     print(a+b+c)

# add(10, 20, 30)

# *args - variable length para

# def add(*nums):
#     print(type(nums))

# add(10,20,30,40)

# def add(*nums):
#     print(sum(nums))
# add(10,20,30, 40,50,60)


# def add(*nums):
#     total = 0
#     for num in nums:
#         total += num
#     print(total)
# add(10,20,30, 40,50,60)

# default para

# def bill(potato, tomato=30):
#     print(tomato + potato)

# bill(potato=20, tomato=10)

# **kwargs - variable length para with key-value pairs

# def bill(**products):
#     print(type(products))

# bill()


# def bill(**products):
#     total = 0
#     for product, price in products.items():
#         total += price
#         print(f"{product}: {price}")

#     print(f"Total bill: {total}")

# bill(tomato=20, potato=30, onion=50, pen=10, book=500)

nums = [1,2,3,4,5,6,7,8,9,10]

# def squr(num):
#     return num ** 2

# sqlist = []
# for num in nums:
#     sqlist.append(squr(num))
# print(sqlist)

# print(list(map(squr, nums)))
# print(list(map(lambda num:num**2, [1,2,3,4,5,6,7,8,9,10])))

# lambda function:

# obj = lambda para1, para2: para1 + para2

# print(obj("brijesh", "gondaliya"))


# print(list(filter(lambda num:num%2==0, [1,2,3,4,5,6,7,8,9,10])))
# print(list(filter(lambda num:num%2!=0, [1,2,3,4,5,6,7,8,9,10])))

# reducer

# from functools import reduce

# print(reduce(lambda x, y: x+y, [1,2,3,4,5,6,7,8,9,10]))



# a = 10

# def test():
#     global a
#     a = 20
#     print(a)

# test()
# print(a)

# def outer():
#     print("I am an outer function")
#     def inner():
#         return "i am an inner function"
#     return inner()

# print(outer())

# decorators

def len_count(func):
    def wrapper():
        res = len(func())
        return res
    return wrapper

def conver_in_swapcase(func):
    def wrapper():
        res = func().swapcase()
        print(res)
        return res
    return wrapper

@len_count
@conver_in_swapcase
def test():
    return input("Enter something:  ")

print(test())