"""
List - Ordered, Mutable, allow any types of values, allow duplicates values, indexing, slicing

# Syntax:

my_list = []
my_list = [item1, item2, item3,...]
my_list = list()
"""

nums = []
# print(type(nums))
# print(len(nums))

# nums = [1, 2, 3, 4, 5]
# print(nums)

mummy = ['milk', 'butter-milk', '1kg tomato']
aunty = ['milk', '2kg onion']
my = ['drink']
sister = ['chocolate']

# concate | replica

mix_list = mummy + aunty + my*2 + sister

# print(mix_list)
# ['milk', 'butter-milk', '1kg tomato', 'milk', '2kg onion', 'drink', 'drink', 'chocolate']

# indexing (+/-)
# print(mummy[0])

# print(mix_list[0])
# print(mix_list[1])
# print(mix_list[2])
# print(mix_list[3])
# print(mix_list[4])
# print(mix_list[5])
# print(mix_list[6])
# print(mix_list[7])
# print(mix_list[8])

# print(mix_list[-1])

# slicing (+/-)

# print(mix_list[:3])
# print(mix_list[3:5])
# print(mix_list[5:7])
# print(mix_list[7:])

# print(mix_list[10])

# mix_values = [1,2,3,4, 'a', 'b', 'c', 'd', 1.1,2.2,3.3, 34+46j ]
# print(mix_values)


nums = []

# print(dir(nums))


nums = [1,2,3,4,5,1,1,2,2,2,2,2,2,2,2]
new_nums = [6,7,8,9,10]
# new_nums = 6

# add
# nums.append(new_nums)
# nums.extend(new_nums)
# nums.insert(0, new_nums)
# nums.insert(1, new_nums)

# update
# print(nums[2])
nums[2] = 2222
# print(nums)

# delete
# nums.clear()
# nums.pop()
# nums.pop(3)
# nums.remove(2222)

# print(nums.count(2))
# print(nums.index(1, 2))
# print(nums.index(1, 6))

# copy_nums = nums.copy()
# # print(copy_nums)
# print(id(nums))
# print(id(copy_nums))
# nums.sort()
# nums.sort(reverse=True)

# nums.reverse()
# print(nums)