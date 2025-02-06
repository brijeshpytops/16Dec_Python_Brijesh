-- What is table in mysql?

A table in MySQL is a structured collection of data organized into rows and columns. It is the fundamental unit of data storage in a MySQL database.

The structure of a table consists of:

1. Columns: These are the individual data elements or fields that make up each row in the table. Each column has a specific data type, such as integer, string, date, or other data types.

2. Rows: These are the individual records or instances of the data stored in the table. Each row corresponds to a specific set of values for each column.

-- syntax of table:

CREATE TABLE table_name (
    column1 data_type,
    column2 data_type,
    column3 data_type,
    --...
    columnN data_type
);

-- How to create a table in mysql?

To create a table in MySQL, you can use the CREATE TABLE statement. Here's an example:

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2) NOT NULL
);

-- How to insert data into a table in mysql?

-- Create table

mysql> create table users(
    user_id int primary key auto_increment,
    fullname varchar(255) not null,
    email varchar(255) not null unique,
    mobile varchar(255) not null unique,
    password varchar(255) not null);

-- show tables:

mysql> show tables;
+--------------------+
| Tables_in_snapchat |
+--------------------+
| users              |
+--------------------+

-- show table strucuture

mysql> describe [table-name];
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| user_id  | int          | NO   | PRI | NULL    | auto_increment |
| fullname | varchar(255) | NO   |     | NULL    |                |
| email    | varchar(255) | NO   | UNI | NULL    |                |
| mobile   | varchar(255) | NO   | UNI | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+

-- Add new column in existing table
mysql> alter table users add is_active bool default true;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| user_id   | int          | NO   | PRI | NULL    | auto_increment |
| fullname  | varchar(255) | NO   |     | NULL    |                |
| email     | varchar(255) | NO   | UNI | NULL    |                |
| mobile    | varchar(255) | NO   | UNI | NULL    |                |
| password  | varchar(255) | NO   |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | 1       |                |
+-----------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

-- modify column configuration

mysql> alter table users modify fullname varchar(100);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| user_id   | int          | NO   | PRI | NULL    | auto_increment |
| fullname  | varchar(100) | YES  |     | NULL    |                |
| email     | varchar(255) | NO   | UNI | NULL    |                |
| mobile    | varchar(255) | NO   | UNI | NULL    |                |
| password  | varchar(255) | NO   |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | 1       |                |
+-----------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

-- delete column

mysql> alter table users drop fullname;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe users;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| user_id   | int          | NO   | PRI | NULL    | auto_increment |
| email     | varchar(255) | NO   | UNI | NULL    |                |
| mobile    | varchar(255) | NO   | UNI | NULL    |                |
| password  | varchar(255) | NO   |     | NULL    |                |
| is_active | tinyint(1)   | YES  |     | 1       |                |
+-----------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

-- Delete table data with structure

mysql> drop table users;
Query OK, 0 rows affected (0.05 sec)

-- Delete table data without structure

mysql> TRUNCATE TABLE users;
Query OK, 0 rows affected (0.00 sec)