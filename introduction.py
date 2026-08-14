"""
MySQL Complete Notes
====================

Definition:
MySQL is an open-source relational database management system used to store, organize, and retrieve data using SQL queries.

Example:
CREATE DATABASE school_db;
USE school_db;

1. Database Commands
Definition:
Database commands are used to create, view, select, and remove databases.

Example:
CREATE DATABASE school_db;
USE school_db;
SHOW DATABASES;
DROP DATABASE school_db;

2. Table Commands
Definition:
Table commands are used to create, change, view, and delete tables inside a database.

Example:
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE
);

DESCRIBE students;
SHOW TABLES;
ALTER TABLE students ADD COLUMN phone VARCHAR(15);
ALTER TABLE students DROP COLUMN phone;
RENAME TABLE students TO student_info;
DROP TABLE student_info;

3. Data Types
Definition:
Data types define the kind of data a column can store.

Example:
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    is_available BOOLEAN,
    created_date DATE
);

4. Constraints
Definition:
Constraints are rules applied to columns to control the type of data stored.

Example:
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(30) DEFAULT 'IT'
);

5. Insert Statement
Definition:
The INSERT statement is used to add new records to a table.

Example:
INSERT INTO students (name, age, email)
VALUES ('Arjun', 22, 'arjun@gmail.com');

INSERT INTO students (name, age, email)
VALUES
('Alan', 24, 'alan@gmail.com'),
('Neha', 21, 'neha@gmail.com');

6. Select Statement
Definition:
The SELECT statement is used to fetch data from one or more tables.

Example:
SELECT * FROM students;
SELECT name, age FROM students;
SELECT name FROM students WHERE age > 20;

7. Where Clause
Definition:
The WHERE clause filters rows based on a given condition.

Example:
SELECT * FROM students WHERE age >= 21;
SELECT * FROM students WHERE name = 'Arjun';
SELECT * FROM students WHERE age BETWEEN 20 AND 25;

8. Operators
Definition:
Operators are used to compare values and build conditions.

Example:
SELECT * FROM students WHERE age = 22;
SELECT * FROM students WHERE age != 22;
SELECT * FROM students WHERE age > 20;
SELECT * FROM students WHERE age < 25;
SELECT * FROM students WHERE age >= 21 AND age <= 24;
SELECT * FROM students WHERE age > 20 OR name = 'Neha';

9. IN, NOT IN, BETWEEN, LIKE
Definition:
These keywords help in matching multiple values, ranges, or patterns.

Example:
SELECT * FROM students WHERE age IN (20, 21, 22);
SELECT * FROM students WHERE age NOT IN (20, 21);
SELECT * FROM students WHERE age BETWEEN 20 AND 25;
SELECT * FROM students WHERE name LIKE 'A%';
SELECT * FROM students WHERE name LIKE '%a';

10. IS NULL and IS NOT NULL
Definition:
These are used to check whether a value is empty or not.

Example:
SELECT * FROM students WHERE email IS NULL;
SELECT * FROM students WHERE email IS NOT NULL;

11. Update Statement
Definition:
The UPDATE statement changes existing records in a table.

Example:
UPDATE students SET age = 23 WHERE id = 1;
UPDATE students SET email = 'arjun123@gmail.com' WHERE name = 'Arjun';

12. Delete Statement
Definition:
The DELETE statement removes specific rows from a table.

Example:
DELETE FROM students WHERE id = 2;

13. Truncate and Drop
Definition:
TRUNCATE removes all rows from a table quickly, while DROP removes the entire table or database.

Example:
TRUNCATE TABLE students;
DROP TABLE students;
DROP DATABASE school_db;

14. Alter Table
Definition:
ALTER TABLE is used to change the structure of an existing table.

Example:
ALTER TABLE students RENAME COLUMN email TO student_email;
ALTER TABLE students MODIFY student_email VARCHAR(150);
ALTER TABLE students ADD COLUMN city VARCHAR(30);
ALTER TABLE students DROP COLUMN city;

15. Order By
Definition:
ORDER BY sorts the result set in ascending or descending order.

Example:
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY age DESC;

16. Limit
Definition:
LIMIT restricts the number of rows returned by a query.

Example:
SELECT * FROM students LIMIT 3;
SELECT * FROM students ORDER BY age DESC LIMIT 2;

17. Distinct
Definition:
DISTINCT removes duplicate values from the result set.

Example:
SELECT DISTINCT age FROM students;

18. Aggregate Functions
Definition:
Aggregate functions perform calculations on a set of values.

Example:
SELECT COUNT(*) AS total_students FROM students;
SELECT SUM(age) AS total_age FROM students;
SELECT AVG(age) AS average_age FROM students;
SELECT MAX(age) AS highest_age FROM students;
SELECT MIN(age) AS lowest_age FROM students;

19. Group By
Definition:
GROUP BY groups rows that have the same values into summary rows.

Example:
SELECT department, COUNT(*) AS count_emp
FROM employees GROUP BY department;

20. Having Clause
Definition:
HAVING filters grouped results after the GROUP BY operation.

Example:
SELECT department, COUNT(*) AS count_emp
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

21. Aliases
Definition:
Aliases give temporary names to columns or tables for readability.

Example:
SELECT name AS student_name, age AS student_age FROM students;
SELECT s.name FROM students AS s;

22. Joins
Definition:
Joins combine rows from two or more tables based on a related column.

Example:
CREATE TABLE courses (
    id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

SELECT s.name, c.course_name
FROM students s
INNER JOIN courses c ON s.course_id = c.id;

SELECT s.name, c.course_name
FROM students s
LEFT JOIN courses c ON s.course_id = c.id;

SELECT s.name, c.course_name
FROM students s
RIGHT JOIN courses c ON s.course_id = c.id;

23. Subqueries
Definition:
A subquery is a query written inside another query.

Example:
SELECT name FROM students
WHERE age > (SELECT AVG(age) FROM students);

SELECT name FROM students
WHERE id IN (SELECT course_id FROM courses);

24. Views
Definition:
A view is a virtual table created from a SELECT query.

Example:
CREATE VIEW active_students AS
SELECT id, name, age FROM students WHERE age >= 18;

SELECT * FROM active_students;

25. Indexes
Definition:
An index improves the speed of data retrieval operations on a table.

Example:
CREATE INDEX idx_students_name ON students(name);
SHOW INDEX FROM students;

26. Transactions
Definition:
A transaction is a sequence of SQL statements treated as one unit of work.

Example:
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;

ROLLBACK;

27. String Functions
Definition:
String functions are used to manipulate text data.

Example:
SELECT UPPER(name) FROM students;
SELECT LOWER(name) FROM students;
SELECT CONCAT(name, ' - ', age) FROM students;
SELECT LENGTH(name) FROM students;

28. Date Functions
Definition:
Date functions are used to work with date and time values.

Example:
SELECT CURDATE();
SELECT NOW();
SELECT DATE_FORMAT(CURDATE(), '%d-%m-%Y');

29. Comments in SQL
Definition:
Comments are used to explain SQL code and make it easier to understand.

Example:
-- This is a single-line comment
/* This is a multi-line comment */

30. Common MySQL Interview Notes
Definition:
These are frequently asked MySQL concepts and differences.

Example:
DELETE FROM students WHERE id = 1;
TRUNCATE TABLE students;
DROP TABLE students;

Difference:
DELETE removes selected rows, TRUNCATE removes all rows faster, and DROP removes the whole table.






PRIMARY KEY UNIQUELY IDENTIFIERS EACH ROW WITHIN A SINGLE DATABASE TABLE 
FOREIGN KEY LINKS DATA BTWN TWO TABLES BY REFERENCING THE PRIMARY KEY OF ANOTHER KEY

relationships
============
one to many
many to many
one to many
many to one

an sql join is a clause used to cobine rows from two or more tables based on the related column btwn them
==============================

inner join >> only rows that have matching values in both tables
left join >> all rows from the left table,plus matched rows from the right table unmatched right rows return null
right join >> all rows from the right table plus matched rows from the left table
outer join >> all rows and recordes from both tables



"""