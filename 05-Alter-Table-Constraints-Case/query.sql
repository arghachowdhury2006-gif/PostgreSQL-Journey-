-- Display all person records
SELECT * FROM person;

-- Add age column
ALTER TABLE person
ADD COLUMN age INT;

-- Drop age column
ALTER TABLE person
DROP COLUMN age;

-- Rename fname column to name
ALTER TABLE person
RENAME COLUMN fname TO name;

-- Change name column data type
ALTER TABLE person
ALTER COLUMN name
SET DATA TYPE VARCHAR(50);

-- Set default value for city
ALTER TABLE person
ALTER COLUMN city
SET DEFAULT 'Unknown';

-- Add mobile column with CHECK constraint
ALTER TABLE person
ADD COLUMN mob VARCHAR(15)
CHECK (LENGTH(mob) >= 10);

-- Insert mobile number
INSERT INTO person(mob)
VALUES ('1256');

-- Insert mobile number
INSERT INTO person(mob)
VALUES ('707917852');

-- Drop mobile check constraint
ALTER TABLE person
DROP CONSTRAINT person_mob_check;

-- Insert multiple person records
INSERT INTO person(id, name, city)
VALUES
(102, 'Ram', 'Kolkata'),
(101, 'Arghya', 'Mumbai'),
(101, 'Sima', 'Nepal');

-- Display all records
SELECT * FROM person;

-- Add a named CHECK constraint
ALTER TABLE person
ADD CONSTRAINT mob_no_less_10
CHECK (LENGTH(mob) >= 10);

-- Update mobile number
UPDATE person
SET mob = '70917852'
WHERE id = 102;






-- Categorize salary as HIGH or LOW
SELECT fname, salary,
CASE
    WHEN salary >= 50000 THEN 'HIGH'
    ELSE 'LOW'
END AS sal_cat
FROM employees;

-- Categorize salary as HIGH, MID or LOW
SELECT fname, salary,
CASE
    WHEN salary > 50000 THEN 'HIGH'
    WHEN salary BETWEEN 40000 AND 50000 THEN 'MID'
    ELSE 'LOW'
END AS sal_cat
FROM employees;

-- Calculate 10% bonus
SELECT fname, salary,
(salary / 10) AS bonus
FROM employees;

-- Count employees by salary category
SELECT
    CASE
        WHEN salary >= 50000 THEN 'HIGH'
        WHEN salary BETWEEN 40000 AND 50000 THEN 'LOW'
        ELSE 'MID'
    END AS sal_cat,
    COUNT(*)
FROM employees
GROUP BY sal_cat;
