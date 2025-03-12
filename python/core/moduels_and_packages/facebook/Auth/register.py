def user_register(username, email, password, confirm_password):
    if username == "" or email == "" or password == "" or confirm_password == "":
        return "All fields are required."
    elif len(username) < 5 or len(username) > 20:
        return "Username should be between 5 and 20 characters long."
    elif not username.isalnum():
        return "Username should only contain alphanumeric characters."
    else:
        if email.count("@") != 1 or email.count(".") == 0:
            return "Invalid email address."
        elif len(password) < 8 or len(password) > 20:
            return "Password should be between 8 and 20 characters long."
        elif not any(char.isdigit() for char in password):
            return "Password should contain at least one digit."
        elif not any(char.isalpha() for char in password):
            return "Password should contain at least one letter."
        elif not any(char.isupper() for char in password):
            return "Password should contain at least one uppercase letter."
        elif not any(char.islower() for char in password):
            return "Password should contain at least one lowercase letter."
        elif password != confirm_password:
            return "Passwords do not match."
        else:
            return "User registered successfully."