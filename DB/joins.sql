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