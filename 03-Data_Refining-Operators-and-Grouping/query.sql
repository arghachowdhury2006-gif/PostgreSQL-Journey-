CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
dept VARCHAR(50),
salary DECIMAL(10,2) DEFAULT 30000.00,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Insert employee data
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

-- Find HR or Finance employees
SELECT * FROM employees
WHERE dept = 'HR' OR dept = 'Finance';

-- Find HR employees with salary below 50000
SELECT * FROM employees
WHERE dept = 'HR' AND salary < 50000;

-- Find employees from IT, Marketing or Finance
SELECT * FROM employees
WHERE dept IN ('IT','Marketing','Finance');

-- Find employees with salary between 50000 and 60000
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 60000;

-- Show unique departments
SELECT DISTINCT dept FROM employees;

-- Sort employees by first name
SELECT * FROM employees
ORDER BY fname;

-- Sort employees by first name in descending order
SELECT * FROM employees
ORDER BY fname DESC;

-- Show only first 3 employees
SELECT * FROM employees
LIMIT 3;

-- Find names starting with A
SELECT * FROM employees
WHERE fname LIKE 'A%';

-- Find names ending with a
SELECT * FROM employees
WHERE fname LIKE '%a';

-- Find names containing i
SELECT * FROM employees
WHERE fname LIKE '%i%';

-- Find names with exactly 2 characters
SELECT * FROM employees
WHERE fname LIKE '__';

-- Find names where second character is a
SELECT * FROM employees
WHERE fname LIKE '_a%';

-- Count total employees
SELECT COUNT(emp_id) FROM employees;

-- Find total salary
SELECT SUM(salary) FROM employees;

-- Find average salary
SELECT AVG(salary) FROM employees;

-- Find minimum salary
SELECT MIN(salary) FROM employees;

-- Find maximum salary
SELECT MAX(salary) FROM employees;

-- Show departments using GROUP BY
SELECT dept FROM employees
GROUP BY dept;

-- Count employees in each department
SELECT dept, COUNT(emp_id)
FROM employees
GROUP BY dept;

-- Find total salary of each department
SELECT dept, SUM(salary)
FROM employees
GROUP BY dept;
