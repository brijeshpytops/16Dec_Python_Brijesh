# from facebook.Auth.register import user_register
# from facebook.Auth.login import user_login

# from facebook.Auth import register, login
# from facebook.Auth.register import *
from facebook.Auth import login as l

# print(user_register('admin', 'admin@gmail.com', 'Aa12345678', 'Aa12345678'))

# print(user_login('admin', 'Aa12345678'))

# print(register.user_register('admin', 'admin@gmail.com', 'Aa12345678', 'Aa12345678'))

# print(login.user_login('admin', 'Aa12345678'))
print(l.user_login('admin', 'Aa12345678'))