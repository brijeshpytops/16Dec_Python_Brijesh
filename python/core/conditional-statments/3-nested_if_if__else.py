# if (condition-1):
#     if (condition-2):
#         statments

age = int(input("Enter an age: "))
if age >= 18:
    weight = float(input("Enter a weight: "))
    if weight >= 50:
        print("You are eligible for voting.")
    else:
        print("You are not eligible for voting.")
else:
    print("You are not eligible for voting.")