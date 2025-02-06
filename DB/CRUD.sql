CRUD Operation with table using mysql:

-- Insert data:

syntax:

INSERT INTO table_name(column1, column2, column3...) VALUES (value1, value2, value3...);

mysql> insert into users(email, mobile, password)values("brijesh@gmail.com","1234567890","brijesh");
Query OK, 1 row affected (0.02 sec)

-- Insert multiple data at once
mysql> insert into users(email, mobile, password)values("jay@gmail.com","1234567891","jay"),("vivek@gmail.com","1234567892","vivek"),("jaydeep@gmail.com","1234567893","jaydeep");
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO users (email, mobile, password) VALUES
    ("rohit@gmail.com", "9876543210", "rohit123"),
    ("anita@yahoo.com", "9123456789", "anita@pass"),
    ("manoj@gmail.com", "9234567890", "manoj@2024"),
    ("ravi@hotmail.com", "9345678901", "ravi!pass"),
    ("priya@outlook.com", "9456789012", "priya#pass"),
    ("suresh@gmail.com", "9567890123", "suresh@789"),
    ("kavita@yahoo.com", "9678901234", "kavita@pass"),
    ("ajay@rediffmail.com", "9789012345", "ajay_rock"),
    ("meena@gmail.com", "9890123456", "meena@me"),
    ("alok@hotmail.com", "9901234567", "alok_007"),
    ("deepak@gmail.com", "9012345678", "deepak@xyz");
Query OK, 11 rows affected (0.01 sec)
Records: 11  Duplicates: 0  Warnings: 0

-- select or filter data from the table

-- select full table data

mysql> select * from users;
+---------+---------------------+------------+-------------+-----------+
| user_id | email               | mobile     | password    | is_active |
+---------+---------------------+------------+-------------+-----------+
|       1 | brijesh@gmail.com   | 1234567890 | brijesh     |         1 |
|       2 | jay@gmail.com       | 1234567891 | jay         |         1 |
|       3 | vivek@gmail.com     | 1234567892 | vivek       |         1 |
|       4 | jaydeep@gmail.com   | 1234567893 | jaydeep     |         1 |
|       5 | rohit@gmail.com     | 9876543210 | rohit123    |         1 |
|       6 | anita@yahoo.com     | 9123456789 | anita@pass  |         1 |
|       7 | manoj@gmail.com     | 9234567890 | manoj@2024  |         1 |
|       8 | ravi@hotmail.com    | 9345678901 | ravi!pass   |         1 |
|       9 | priya@outlook.com   | 9456789012 | priya#pass  |         1 |
|      10 | suresh@gmail.com    | 9567890123 | suresh@789  |         1 |
|      11 | kavita@yahoo.com    | 9678901234 | kavita@pass |         1 |
|      12 | ajay@rediffmail.com | 9789012345 | ajay_rock   |         1 |
|      13 | meena@gmail.com     | 9890123456 | meena@me    |         1 |
|      14 | alok@hotmail.com    | 9901234567 | alok_007    |         1 |
|      15 | deepak@gmail.com    | 9012345678 | deepak@xyz  |         1 |
+---------+---------------------+------------+-------------+-----------+
15 rows in set (0.01 sec)

-- select specific columns

mysql> select user_id, email, mobile from users;
+---------+---------------------+------------+
| user_id | email               | mobile     |
+---------+---------------------+------------+
|       1 | brijesh@gmail.com   | 1234567890 |
|       2 | jay@gmail.com       | 1234567891 |
|       3 | vivek@gmail.com     | 1234567892 |
|       4 | jaydeep@gmail.com   | 1234567893 |
|       5 | rohit@gmail.com     | 9876543210 |
|       6 | anita@yahoo.com     | 9123456789 |
|       7 | manoj@gmail.com     | 9234567890 |
|       8 | ravi@hotmail.com    | 9345678901 |
|       9 | priya@outlook.com   | 9456789012 |
|      10 | suresh@gmail.com    | 9567890123 |
|      11 | kavita@yahoo.com    | 9678901234 |
|      12 | ajay@rediffmail.com | 9789012345 |
|      13 | meena@gmail.com     | 9890123456 |
|      14 | alok@hotmail.com    | 9901234567 |
|      15 | deepak@gmail.com    | 9012345678 |
+---------+---------------------+------------+
15 rows in set (0.01 sec)

-- select data based on conditions on user_id
mysql> select * from users where user_id <= 10;
+---------+-------------------+------------+------------+-----------+
| user_id | email             | mobile     | password   | is_active |
+---------+-------------------+------------+------------+-----------+
|       1 | brijesh@gmail.com | 1234567890 | brijesh    |         1 |
|       2 | jay@gmail.com     | 1234567891 | jay        |         1 |
|       3 | vivek@gmail.com   | 1234567892 | vivek      |         1 |
|       4 | jaydeep@gmail.com | 1234567893 | jaydeep    |         1 |
|       5 | rohit@gmail.com   | 9876543210 | rohit123   |         1 |
|       6 | anita@yahoo.com   | 9123456789 | anita@pass |         1 |
|       7 | manoj@gmail.com   | 9234567890 | manoj@2024 |         1 |
|       8 | ravi@hotmail.com  | 9345678901 | ravi!pass  |         1 |
|       9 | priya@outlook.com | 9456789012 | priya#pass |         1 |
|      10 | suresh@gmail.com  | 9567890123 | suresh@789 |         1 |
+---------+-------------------+------------+------------+-----------+
10 rows in set (0.01 sec)

-- select data based on conditions on email
mysql> select * from users where email LIKE '%gmail.com';
+---------+-------------------+------------+------------+-----------+
| user_id | email             | mobile     | password   | is_active |
+---------+-------------------+------------+------------+-----------+
|       1 | brijesh@gmail.com | 1234567890 | brijesh    |         1 |
|       2 | jay@gmail.com     | 1234567891 | jay        |         1 |
|       3 | vivek@gmail.com   | 1234567892 | vivek      |         1 |
|       4 | jaydeep@gmail.com | 1234567893 | jaydeep    |         1 |
|       5 | rohit@gmail.com   | 9876543210 | rohit123   |         1 |
|       7 | manoj@gmail.com   | 9234567890 | manoj@2024 |         1 |
|      10 | suresh@gmail.com  | 9567890123 | suresh@789 |         1 |
|      13 | meena@gmail.com   | 9890123456 | meena@me   |         1 |
|      15 | deepak@gmail.com  | 9012345678 | deepak@xyz |         1 |
+---------+-------------------+------------+------------+-----------+
9 rows in set (0.01 sec)

-- select data based on conditions on start email from jay

mysql> select * from users where email LIKE 'jay%';
+---------+-------------------+------------+----------+-----------+
| user_id | email             | mobile     | password | is_active |
+---------+-------------------+------------+----------+-----------+
|       2 | jay@gmail.com     | 1234567891 | jay      |         1 |
|       4 | jaydeep@gmail.com | 1234567893 | jaydeep  |         1 |
+---------+-------------------+------------+----------+-----------+
2 rows in set (0.00 sec)

-- Ordered data by default it will be in asending and gif you will provide DESC then data fromat will be in desnding order

mysql> select * from users order by email;
+---------+---------------------+------------+-------------+-----------+
| user_id | email               | mobile     | password    | is_active |
+---------+---------------------+------------+-------------+-----------+
|      12 | ajay@rediffmail.com | 9789012345 | ajay_rock   |         1 |
|      14 | alok@hotmail.com    | 9901234567 | alok_007    |         1 |
|       6 | anita@yahoo.com     | 9123456789 | anita@pass  |         1 |
|       1 | brijesh@gmail.com   | 1234567890 | brijesh     |         1 |
|      15 | deepak@gmail.com    | 9012345678 | deepak@xyz  |         1 |
|       2 | jay@gmail.com       | 1234567891 | jay         |         1 |
|       4 | jaydeep@gmail.com   | 1234567893 | jaydeep     |         1 |
|      11 | kavita@yahoo.com    | 9678901234 | kavita@pass |         1 |
|       7 | manoj@gmail.com     | 9234567890 | manoj@2024  |         1 |
|      13 | meena@gmail.com     | 9890123456 | meena@me    |         1 |
|       9 | priya@outlook.com   | 9456789012 | priya#pass  |         1 |
|       8 | ravi@hotmail.com    | 9345678901 | ravi!pass   |         1 |
|       5 | rohit@gmail.com     | 9876543210 | rohit123    |         1 |
|      10 | suresh@gmail.com    | 9567890123 | suresh@789  |         1 |
|       3 | vivek@gmail.com     | 1234567892 | vivek       |         1 |
+---------+---------------------+------------+-------------+-----------+
15 rows in set (0.00 sec)

mysql> select * from users order by email desc;
+---------+---------------------+------------+-------------+-----------+
| user_id | email               | mobile     | password    | is_active |
+---------+---------------------+------------+-------------+-----------+
|       3 | vivek@gmail.com     | 1234567892 | vivek       |         1 |
|      10 | suresh@gmail.com    | 9567890123 | suresh@789  |         1 |
|       5 | rohit@gmail.com     | 9876543210 | rohit123    |         1 |
|       8 | ravi@hotmail.com    | 9345678901 | ravi!pass   |         1 |
|       9 | priya@outlook.com   | 9456789012 | priya#pass  |         1 |
|      13 | meena@gmail.com     | 9890123456 | meena@me    |         1 |
|       7 | manoj@gmail.com     | 9234567890 | manoj@2024  |         1 |
|      11 | kavita@yahoo.com    | 9678901234 | kavita@pass |         1 |
|       4 | jaydeep@gmail.com   | 1234567893 | jaydeep     |         1 |
|       2 | jay@gmail.com       | 1234567891 | jay         |         1 |
|      15 | deepak@gmail.com    | 9012345678 | deepak@xyz  |         1 |
|       1 | brijesh@gmail.com   | 1234567890 | brijesh     |         1 |
|       6 | anita@yahoo.com     | 9123456789 | anita@pass  |         1 |
|      14 | alok@hotmail.com    | 9901234567 | alok_007    |         1 |
|      12 | ajay@rediffmail.com | 9789012345 | ajay_rock   |         1 |
+---------+---------------------+------------+-------------+-----------+
15 rows in set (0.00 sec)


mysql> select user_id as price from users order by user_id; [Low to High
]
+-------+
| price |
+-------+
|     1 |
|     2 |
|     3 |
|     4 |
|     5 |
|     6 |
|     7 |
|     8 |
|     9 |
|    10 |
|    11 |
|    12 |
|    13 |
|    14 |
|    15 |
+-------+

mysql> select user_id as price from users order by user_id desc;
+-------+
| price |
+-------+
|    15 |
|    14 |
|    13 |
|    12 |
|    11 |
|    10 |
|     9 |
|     8 |
|     7 |
|     6 |
|     5 |
|     4 |
|     3 |
|     2 |
|     1 |
+-------+


mysql> select user_id as price from users order by user_id desc limit 5;
+-------+
| price |
+-------+
|    15 |
|    14 |
|    13 |
|    12 |
|    11 |
+-------+
5 rows in set (0.00 sec)

mysql> select user_id as price from users order by user_id limit 5;
+-------+
| price |
+-------+
|     1 |
|     2 |
|     3 |
|     4 |
|     5 |
+-------+

mysql> SELECT user_id AS price FROM users WHERE user_id < 6 OR user_id > 10 ORDER BY user_id;
+-------+
| price |
+-------+
|     1 |
|     2 |
|     3 |
|     4 |
|     5 |
|    11 |
|    12 |
|    13 |
|    14 |
|    15 |
+-------+
10 rows in set (0.00 sec)


-- Execution Order

SELECT department, COUNT(*) 
FROM employees  
WHERE age > 25  
GROUP BY department  
HAVING COUNT(*) > 5  
ORDER BY department ASC  
LIMIT 10 OFFSET 2;


-- update data

UPDATE users SET email = 'new@gmail.com' WHERE user_id = 5;

SELECT * FROM users WHERE user_id = 5;

update users set mobile="1112223333" where user_id = 2;

SELECT * FROM users

-- delete data

delete from users where user_id = 14;

SELECT * FROM users

delete from users where email LIKE '%yahoo.com';

SELECT * FROM users;

delete from users where is_active = 0;

DELETE FROM users WHERE user_id = 6;

SELECT * FROM users;

-- Indexing