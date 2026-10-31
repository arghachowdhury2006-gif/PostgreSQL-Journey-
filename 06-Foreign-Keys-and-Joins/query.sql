-- Create customers table
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create orders table with foreign key
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    price NUMERIC NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

-- Insert customer records
INSERT INTO customers(name)
VALUES
('Raju'), ('Sham'), ('Paul'), ('Alex');

-- Insert order records
INSERT INTO orders(ord_date, cust_id, price)
VALUES
('2024-01-01', 1, 250.00),
('2024-01-15', 1, 300.00),
('2024-02-01', 2, 150.00),
('2024-03-01', 3, 450.00),
('2024-04-04', 2, 550.00);

-- Display all customers
SELECT * FROM customers;

-- Display all orders
SELECT * FROM orders;

-- CROSS JOIN
SELECT *
FROM customers
CROSS JOIN orders;

-- INNER JOIN
SELECT *
FROM customers c
INNER JOIN orders o
ON c.cust_id = o.cust_id;

-- Calculate total order price per customer
SELECT name, SUM(price)
FROM customers
INNER JOIN orders
ON orders.cust_id = customers.cust_id
GROUP BY name;

-- LEFT JOIN
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id;

-- RIGHT JOIN
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.cust_id = o.cust_id;
