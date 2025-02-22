score = float(input("Enter a score: "))

if score >= 0 and score <= 100:
    if score >= 80:
        print("Class A")
    elif score >= 60:
        print("Class B")
    elif score >= 40:
        print("Class C")
    else:
        print("Sorry, You are failed")
else:
    print("Invalid Score")


