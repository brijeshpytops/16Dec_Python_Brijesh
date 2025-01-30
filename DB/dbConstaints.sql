-- constraints are rules applied to table columns to enforce data integrity and consistency. Here are the key MySQL constraints:

-- 1. NOT NULL
-- Ensures that a column cannot have a NULL value.

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL
-- );

-- 2. UNIQUE
-- Ensures that all values in a column are unique.

-- CREATE TABLE users (
--     id INT PRIMARY KEY,
--     email VARCHAR(100) UNIQUE
-- );

-- 3. PRIMARY KEY
-- A combination of NOT NULL and UNIQUE. It uniquely identifies each row.

-- CREATE TABLE students (
--     student_id INT PRIMARY KEY,
--     name VARCHAR(100)
-- );

-- 4. FOREIGN KEY
-- Ensures referential integrity between two tables.

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(id)
-- );

-- 5. CHECK
-- Ensures that column values meet a specific condition.

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     age INT CHECK (age >= 18)
-- );

-- 6. DEFAULT
-- Sets a default value if no value is provided.

-- CREATE TABLE products (
--     id INT PRIMARY KEY,
--     price DECIMAL(10,2) DEFAULT 0.00
-- );

-- 7. AUTO_INCREMENT
-- Automatically generates unique values for a column.

-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100)
-- );