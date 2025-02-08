select users.email, posts.title from users left join posts on users.user_id = posts.user_id;
+---------------------+-------------------------+
| email               | title                   |
+---------------------+-------------------------+
| ajay@rediffmail.com | NULL                    |
| alok@hotmail.com    | NULL                    |
| anita@yahoo.com     | CSS Basics              |
| anita@yahoo.com     | CSS Flexbox             |
| anita@yahoo.com     | CSS Grid                |
| anita@yahoo.com     | Responsive Web Design   |
| deepak@gmail.com    | NULL                    |
| jay@gmail.com       | Introduction to SQL     |
| jay@gmail.com       | Joins in SQL            |
| jay@gmail.com       | Indexes in SQL          |
| jay@gmail.com       | Normalization Basics    |
| jaydeep@gmail.com   | Python Basics           |
| jaydeep@gmail.com   | Python Loops            |
| jaydeep@gmail.com   | Python Functions        |
| jaydeep@gmail.com   | Object-Oriented Python  |
| kavita@yahoo.com    | NULL                    |
| manoj@gmail.com     | NULL                    |
| meena@gmail.com     | NULL                    |
| priya@outlook.com   | NULL                    |
| ravi@hotmail.com    | NULL                    |
| rohit@gmail.com     | JavaScript Introduction |
| rohit@gmail.com     | JavaScript Events       |
| rohit@gmail.com     | JavaScript Arrays       |
| rohit@gmail.com     | JavaScript Functions    |
| suresh@gmail.com    | NULL                    |
| vivek@gmail.com     | Django for Beginners    |
| vivek@gmail.com     | Django Models           |
| vivek@gmail.com     | Django ORM              |
| vivek@gmail.com     | Django Views            |
+---------------------+-------------------------+


mysql> select users.email, posts.title from users right join posts on users.user_id = posts.user_id;
+-------------------+-------------------------+
| email             | title                   |
+-------------------+-------------------------+
| jay@gmail.com     | Introduction to SQL     |
| jay@gmail.com     | Joins in SQL            |
| jay@gmail.com     | Indexes in SQL          |
| jay@gmail.com     | Normalization Basics    |
| vivek@gmail.com   | Django for Beginners    |
| vivek@gmail.com   | Django Models           |
| vivek@gmail.com   | Django ORM              |
| vivek@gmail.com   | Django Views            |
| jaydeep@gmail.com | Python Basics           |
| jaydeep@gmail.com | Python Loops            |
| jaydeep@gmail.com | Python Functions        |
| jaydeep@gmail.com | Object-Oriented Python  |
| rohit@gmail.com   | JavaScript Introduction |
| rohit@gmail.com   | JavaScript Events       |
| rohit@gmail.com   | JavaScript Arrays       |
| rohit@gmail.com   | JavaScript Functions    |
| anita@yahoo.com   | CSS Basics              |
| anita@yahoo.com   | CSS Flexbox             |
| anita@yahoo.com   | CSS Grid                |
| anita@yahoo.com   | Responsive Web Design   |
+-------------------+-------------------------+


mysql> select users.email, posts.title from users inner join posts on users.user_id = posts.user_id;
+-------------------+-------------------------+
| email             | title                   |
+-------------------+-------------------------+
| anita@yahoo.com   | CSS Basics              |
| anita@yahoo.com   | CSS Flexbox             |
| anita@yahoo.com   | CSS Grid                |
| anita@yahoo.com   | Responsive Web Design   |
| jay@gmail.com     | Introduction to SQL     |
| jay@gmail.com     | Joins in SQL            |
| jay@gmail.com     | Indexes in SQL          |
| jay@gmail.com     | Normalization Basics    |
| jaydeep@gmail.com | Python Basics           |
| jaydeep@gmail.com | Python Loops            |
| jaydeep@gmail.com | Python Functions        |
| jaydeep@gmail.com | Object-Oriented Python  |
| rohit@gmail.com   | JavaScript Introduction |
| rohit@gmail.com   | JavaScript Events       |
| rohit@gmail.com   | JavaScript Arrays       |
| rohit@gmail.com   | JavaScript Functions    |
| vivek@gmail.com   | Django for Beginners    |
| vivek@gmail.com   | Django Models           |
| vivek@gmail.com   | Django ORM              |
| vivek@gmail.com   | Django Views            |
+-------------------+-------------------------+

mysql> select users.email, posts.title from users left join posts on users.user_id = posts.user_id where posts.title is not null;
+-------------------+-------------------------+
| email             | title                   |
+-------------------+-------------------------+
| anita@yahoo.com   | CSS Basics              |
| anita@yahoo.com   | CSS Flexbox             |
| anita@yahoo.com   | CSS Grid                |
| anita@yahoo.com   | Responsive Web Design   |
| jay@gmail.com     | Introduction to SQL     |
| jay@gmail.com     | Joins in SQL            |
| jay@gmail.com     | Indexes in SQL          |
| jay@gmail.com     | Normalization Basics    |
| jaydeep@gmail.com | Python Basics           |
| jaydeep@gmail.com | Python Loops            |
| jaydeep@gmail.com | Python Functions        |
| jaydeep@gmail.com | Object-Oriented Python  |
| rohit@gmail.com   | JavaScript Introduction |
| rohit@gmail.com   | JavaScript Events       |
| rohit@gmail.com   | JavaScript Arrays       |
| rohit@gmail.com   | JavaScript Functions    |
| vivek@gmail.com   | Django for Beginners    |
| vivek@gmail.com   | Django Models           |
| vivek@gmail.com   | Django ORM              |
| vivek@gmail.com   | Django Views            |
+-------------------+-------------------------+

-- cursor

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, salary) VALUES 
('Alice', 50000),
('Bob', 60000),
('Charlie', 70000);


DELIMITER $$

CREATE PROCEDURE process_employees()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_name VARCHAR(100);
    DECLARE emp_salary DECIMAL(10,2);

    -- Declare cursor to fetch employees
    DECLARE emp_cursor CURSOR FOR 
    SELECT name, salary FROM employees;

    -- Declare handler to exit the loop when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open the cursor
    OPEN emp_cursor;

    -- Start loop to fetch and process each row
    read_loop: LOOP
        FETCH emp_cursor INTO emp_name, emp_salary;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Process each row (e.g., Print employee details)
        SELECT CONCAT('Employee: ', emp_name, ', Salary: ', emp_salary) AS message;
    END LOOP;

    -- Close the cursor
    CLOSE emp_cursor;
END $$

DELIMITER ;


CALL process_employees();


-- commit, savepoint and rollback
------------------------------------------------------------------------------

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);


START TRANSACTION;

INSERT INTO employees (name, salary) VALUES ('Alice', 50000);
INSERT INTO employees (name, salary) VALUES ('Bob', 60000);
COMMIT; -- Saves the changes permanently

------------------------------------------------------------------------------

START TRANSACTION;

INSERT INTO employees (name, salary) VALUES ('Charlie', 70000);
INSERT INTO employees (name, salary) VALUES ('David', 80000);

ROLLBACK; -- Reverts both INSERT operations

------------------------------------------------------------------------------

START TRANSACTION;

INSERT INTO employees (name, salary) VALUES ('Eve', 90000);
SAVEPOINT sp1;  -- Savepoint created after inserting Eve

INSERT INTO employees (name, salary) VALUES ('Frank', 100000);
SAVEPOINT sp2;  -- Savepoint created after inserting Frank

ROLLBACK TO sp1; -- Rolls back only Frank, Eve remains

COMMIT; -- Saves Eve permanently
