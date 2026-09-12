--CREATE TABLE--
CREATE TABLE person(
id INT,
name VARCHAR(100),
city VARCHAR(100)
);

--INSERT VALUES--
INSERT INTO person(id, name, city)
VALUES
(101, 'Arghya', 'West Bengal'),
(103, 'Suman', 'Delhi'),
(102, 'Ram', 'Kolkata');

--READ VALUES--
SELECT * FROM person;
SELECT name, id FROM person;

--UPDATE VALUES--
UPDATE person
SET city = 'Mumbai'
WHERE name = 'Arghya';

--DELETE SPECIFIC VALUES--
DELETE FROM person
WHERE id = 103;

INSERT INTO person(id, name, city)
VALUES
(101, 'Sima', 'Nepal');

INSERT INTO person(id, name)
VALUES
(102, 'Asim');
