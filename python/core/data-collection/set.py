"""
Set : unordered, mutable, not allowed duplicate values, allow any type of values, unindexed, not allowed slicing

# Syntax:

my_set = {}
my_set = {item1, item2, item3,...}
my_set = set()

"""

# my_set = {1,2}
# print(type(my_set))


# print(set(range(11)))

# nums = set(range(11))

# print(nums[0]) # TypeError: 'set' object is not subscriptable

# print({1,1,2,3,4,1,3,1,3,21,3,1,3,1,3,1})

nums = [1,2,3,1,1,3,1,3,1,3,1,4,34,3,5,12,4,32,53,4]
newset = frozenset(set(nums)) # AttributeError: 'frozenset' object has no attribute 'add'
newset.add(5555)
print(newset)