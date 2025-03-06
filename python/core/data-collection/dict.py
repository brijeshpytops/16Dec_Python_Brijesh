"""
Dict : Odered, mutable, kye must be unique, unindexed

syntax: 

my_dict = {}

my_dict = {
    key1: value1, 
    key2: value2, 
    key3: value3,
    ...
}

my_dict = dict()
"""

person = {
    "name": "Brijesh Gondaliya",
    "age": 28
}


# print(type(person))
# print(len(person))

# Access dict elements

# print(person[0]) # KeyError: 0
# print(person["age"])

# contacts = {
#     'A': [

#         {
#             'name': 'Alice Johnson',
#             'phone': '0123456789',
#             'email': ['alice@gmail.com']
#         },
#         {
#             'name': 'Anil Smith',
#             'phone': '0987654321',
#             'email': ['Anil@gmail.com']
#         }
#     ],
#     'B': [
#         {
#             'name': 'Bob Brown',
#             'phone': '1234567890',
#             'email': ['bob@gmail.com']
#         },
#         {
#             'name': 'Brenda Taylor',
#             'phone': '9876543210',
#             'email': ['brenda@gmail.com', 'brenda1@gmail.com']
#         }
#     ],
#     'C': [
#         {
#             'name': 'Charlie Davis',
#             'phone': '2345678901',
#             'email': ['charlie@gmail.com']
#         },
#         {
#             'name': 'Cindy Evans',
#             'phone': '3456789012',
#             'email': ['cindy@gmail.com']
#         }
#     ]
# }

# print(contacts['B'][1]['email'][1])


#  dict methods
# print(dir({}))


fruites = {
    'apple': 10,
    'banana': 5,
    'orange': 15
}

new_fruites = {
    'mango': 50,
    'ghraps':100
}
fruites.update(new_fruites)
# print(fruites)
# fruites.pop('apple')
# fruites.popitem()
# print(fruites)

# print(fruites.keys())
# for key in fruites.keys():
#     print(key)

# print(fruites.values())
# for value in fruites.values():
#     print(value)

# print(fruites.items())
# for key, value in fruites.items():
#     print(key, value)

# print(fruites.get('banana'))
# fruites.clear()

# copy_fruites = fruites.copy()
# print(copy_fruites)

# vegs = ['potato', 'onion', 'tomato']
# price = [10,20,30]
# price = 50
# vegs_dict = {}
# print(vegs_dict.fromkeys(vegs, price))

car = {
    'brand': 'Toyota',
    'model': 'Camry',
    'year': 2020,
    'color': "blue"
}

# car.setdefault('color', 'black')
# # print(car)

# car = {
#     'brand': 'Toyota',
#     'model': 'Camry',
#     'year': 2020,
#     'color': "blue",
#     'fuel': 'gasoline',
#     'color': "red"
# }

# print(car)


# users = []
# Flag = True
# while(Flag):
#     user = {
#         'name': input("Enter name: "),
#         'age': int(input("Enter age: "))
#     }
#     users.append(user)
#     choice = input("Do you want to add more users? (yes/no): ")
#     if choice.lower() != 'yes':
#         Flag = False

# print(users)

# apple

# {
#     'a':1,
#     'p':2,
#     'l':1,
#     'e':1,
#     ' ': 4
# }

# user_input = input("Enter something: ").lower()

# unique = ''
# letter_count = {}
# for char in user_input:
#     if char not in unique:
#         unique += char
#         letter_count.update({char:user_input.count(char)})
# print(letter_count)

veg1 = {
    'name': 'potato',
    'price': 10,
    'quantity': 20
}

veg2 = {
    'name': 'carrot',
    'price': 5,
    'quantity': 15
}
