CREATE TABLE person(
id INT,
name VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO person(id, name, city)
VALUES
(101, 'Arghya', 'West Bengal'),
(103, 'Suman', 'Delhi'),
(102, 'Ram', 'Kolkata');

SELECT * FROM person;
SELECT name, id FROM person;

UPDATE person
SET city = 'Mumbai'
WHERE name = 'Arghya';

DELETE FROM person
WHERE id = 103;

INSERT INTO person(id, name, city)
VALUES
(101, 'Sima', 'Nepal');

INSERT INTO person(id, name)
VALUES
(102, 'Asim');
