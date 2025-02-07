mysql> select count(user_id) as total_users from users;
+-------------+
| total_users |
+-------------+
|          14 |
+-------------+

mysql> select sum(user_id) as total from users;
+-------+
| total |
+-------+
|   105 |
+-------+

mysql> select avg(user_id) as total_avg from users;
+-----------+
| total_avg |
+-----------+
|    7.5000 |
+-----------+

mysql> select min(user_id) as min_num from users;
+---------+
| min_num |
+---------+
|       1 |
+---------+

mysql> select max(user_id) as max_num from users;
+---------+
| max_num |
+---------+
|      14 |
+---------+


--  custom function

-- syntax:

-- CREATE FUNCTION function_name ([parameter_list])
--   RETURNS return_type
--   [DETERMINISTIC | NOT DETERMINISTIC]
--   [SQL DATA ACCESS {CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA}]
--   [COMMENT 'string']
-- BEGIN
--   RETURN return_value;
-- END;

-- created custom function

use snapchat;

DELIMITER //

CREATE FUNCTION MathCube(num INT)
RETURNS INT
DETERMINISTIC 
BEGIN
DECLARE result INT;
SET result = num * num * num;
RETURN result;
END;
//

DELIMITER ;

mysql> select MathCube(5);
+-------------+
| MathCube(5) |
+-------------+
|         125 |
+-------------+

mysql> select MathCube(10);
+--------------+
| MathCube(10) |
+--------------+
|         1000 |
+--------------+
1 row in set (0.00 sec)


DELIMITER //

CREATE FUNCTION calculate_area(length DECIMAL(8, 2), width DECIMAL(8, 2))
  RETURNS DECIMAL(12, 2)
  DETERMINISTIC
BEGIN
  DECLARE area DECIMAL(12, 2);
  SET area = length * width;
  RETURN area;
END;

//

DELIMITER ;



SELECT calculate_area(10.5, 7.2); -- Returns 75.60

SELECT calculate_area(11.2, 8.9); -- Returns 99.68


-- Procedure

-- syntax:

CREATE PROCEDURE procedure_name ([parameter_list])
BEGIN
  -- Procedure body with SQL statements
END;


-- create table

mysql> CREATE TABLE employees (
    ->   employee_id INT AUTO_INCREMENT PRIMARY KEY,
    ->   employee_name VARCHAR(255) NOT NULL,
    ->   salary DECIMAL(10, 2) NOT NULL
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+--------------------+
| Tables_in_snapchat |
+--------------------+
| employees          |
| posts              |
| users              |
+--------------------+


use snapchat;

DELIMITER //

CREATE PROCEDURE insert_employee(IN emp_name VARCHAR(255), IN emp_salary DECIMAL(10, 2))

BEGIN
INSERT INTO employees (employee_name, salary) VALUES (emp_name, emp_salary);
END;
//

DELIMITER ;

mysql> call insert_employee("brijesh gondaliya", 10000.00);
Query OK, 1 row affected (0.02 sec)

mysql> call insert_employee("raj gondaliya", 20000.00);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employees;
+-------------+-------------------+----------+
| employee_id | employee_name     | salary   |
+-------------+-------------------+----------+
|           1 | brijesh gondaliya | 10000.00 |
|           2 | raj gondaliya     | 20000.00 |
+-------------+-------------------+----------+


-- trigger

-- syntax:


CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE} ON table_name
FOR EACH ROW
BEGIN
    -- Trigger action statements go here
END;


mysql> CREATE TABLE orders (
      order_id INT AUTO_INCREMENT PRIMARY KEY,
      order_date DATE,
      customer_name VARCHAR(255),
      total_amount DECIMAL(10, 2)
    );


mysql> CREATE TABLE order_log (
      log_id INT AUTO_INCREMENT PRIMARY KEY,
      log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      order_id INT,
      order_date DATE,
      customer_name VARCHAR(255),
      total_amount DECIMAL(10, 2)
    );

mysql> show tables;
+--------------------+
| Tables_in_snapchat |
+--------------------+
| employees          |
| order_log          |
| orders             |
| posts              |
| users              |
+--------------------+


use snapchat;

DELIMITER //

CREATE TRIGGER log_new_order
AFTER INSERT ON orders
FOR EACH ROW

BEGIN
  INSERT INTO order_log (order_id, order_date, customer_name, total_amount)
  VALUES (NEW.order_id, NEW.order_date, NEW.customer_name, NEW.total_amount);
END;
//

DELIMITER ;