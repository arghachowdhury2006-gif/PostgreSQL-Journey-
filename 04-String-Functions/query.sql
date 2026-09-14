-- Create employees table
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept VARCHAR(50),
    salary DECIMAL(10,2) DEFAULT 30000.00,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Insert employee records
INSERT INTO employees (emp_id, fname, lname, email, dept, salary, hire_date) 
VALUES
(1,'Raj','Sharma','raj.sharma@example.com','IT',50000.00,'2020-01-15'),
(2,'Priya','Singh','priya.singh@example.com','HR',45000.00,'2019-03-22'),
(3,'Arjun','Verma','arjun.verma@example.com','IT',55000.00,'2021-06-01'),
(4,'Suman','Patel','suman.patel@example.com','Finance',60000.00,'2018-07-30'),
(5,'Kavita','Rao','kavita.rao@example.com','HR',47000.00,'2020-11-10'),
(6,'Amit','Gupta','amit.gupta@example.com','Marketing',52000.00,'2020-09-25'),
(7,'Neha','Desai','neha.desai@example.com','IT',48000.00,'2019-05-18'),
(8,'Rahul','Kumar','rahul.kumar@example.com','IT',53000.00,'2021-02-14'),
(9,'Anjali','Mehta','anjali.mehta@example.com','Finance',61000.00,'2018-12-03'),
(10,'Vijay','Nair','vijay.nair@example.com','Marketing',50000.00,'2020-04-19');

-- Show all employees
SELECT * FROM employees;

-- Combine first and last name
SELECT CONCAT(fname, lname) AS full_name
FROM employees;

-- Combine name with space
SELECT emp_id, CONCAT(fname, ' ', lname) AS full_name, dept
FROM employees;

-- CONCAT_WS with underscore
SELECT emp_id, CONCAT_WS('_', fname, lname) AS full_name, dept
FROM employees;

-- Extract part of a string
SELECT SUBSTR('Hello Buddy', 1, 5);

-- Extract longer part of a string
SELECT SUBSTR('Hello Buddy', 1, 9);

-- Replace text
SELECT REPLACE('Hey Buddy', 'Hey', 'Hello');

-- Replace department name
SELECT REPLACE(dept, 'IT', 'Tech')
FROM employees;

-- Find length of email
SELECT LENGTH(email)
FROM employees;

-- Find employees with short names
SELECT *
FROM employees
WHERE LENGTH(fname) < 5;

-- Convert names to uppercase
SELECT UPPER(fname)
FROM employees;

-- Convert names to lowercase
SELECT LOWER(fname)
FROM employees;

-- Get first 8 characters
SELECT LEFT(email, 8)
FROM employees;

-- Get last 12 characters
SELECT RIGHT(email, 12)
FROM employees;

-- Remove extra spaces
SELECT LENGTH(TRIM('   Arghya chowdhury    '));

-- Find position of text
SELECT POSITION('cho' IN 'Arghya chowdhury');



------------problems----------

-- CONCAT_WS with employee details
SELECT CONCAT_WS(':', emp_id, fname, lname, dept)
FROM employees;

-- CONCAT with multiple values
SELECT CONCAT(
    emp_id, ':', fname, ' ',
    CONCAT_WS(':', lname, dept, salary)
)
FROM employees;

-- Get first letter of department
SELECT CONCAT(LEFT(dept, 1), emp_id, ' ', fname)
FROM employees;

-- Find employee with highest salary
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
