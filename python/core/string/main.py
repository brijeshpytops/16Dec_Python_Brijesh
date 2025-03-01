# what is string ?
#     string is a sequence of characters enclosed in single quotes or double quotes.

# syntax: 

# string_name = 'python'
# print(type(string_name))
# string_name = "python"
# print(type(string_name))
# string_name = """python"""
# print(type(string_name))
# string_name = '''python'''
# print(type(string_name))

# class vaidik:
#     pass

# v = vaidik()
# print(type(v))


code = "python" # iterable object

# Access string element [indexing(+/-)]
# ch  (+)     (-)
# p   0       -6
# y   1       -5
# t   2       -4
# h   3       -3
# o   4       -2
# n   5       -1

# print(code[2])
# print(code[-4])

# access sub string from given string [ slicing(+/-) ]
# syntax: string[start:end+1:step+1]

# print(code[2:5])
# print(code[-2:-5:-1])

# yton
# concat
# print(code[1:3] + code[4:6])

# for ch in code:
#     print(ch, end="")

# print("*" * 5)


# *
# **
# ***
# ****
# *****

# nums = 5
# for num in range(1, nums+1):
#     print("*"*num)

# nums = 5
# for row in range(1, nums+1):
#     print(" "*(nums-row), " *"*row)

# string methods

# print(dir(code))

name = "ToPS TechONoloGY PVt. lTD."

# print(name.lower())
# print(name.upper())
# print(name.capitalize())
# print(name.title())
# print(name.swapcase())

# print(ord('A'))

dot = "python programming for everybOdy".lower()
# print(len(dot))
# print(dot.center(50, '-'))

# print(dot.replace("for", 'more'))

# print(dot.count("o"))

# print(dot.startswith("python"))
# print(dot.endswith("python"))

# print(dot.find("everybody"))

# password = "Admin@1234"

# print(password.isdigit()) # for digit
# print(password.isalpha()) # for alpha
# print(password.isalnum()) # for apla and numeric value
# print(not password.isalnum()) # for speical symbol