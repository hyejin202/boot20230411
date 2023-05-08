USE w3schools;

SELECT * FROM Customers;

SELECT * FROM Customers
WHERE CustomerName LIKE '%ell%';

SELECT * FROM Employees;

CREATE TABLE Bank (
	name VARCHAR(10),
    money INT
);

INSERT INTO Bank (name, money) VALUES('A', 100000);
INSERT INTO Bank (name, money) VALUES('B', 100000);

SELECT * FROM Bank;

SELECT * FROM Categories;

SELECT c.categoryId, c.categoryName, c.description, p.productName, p.price
FROM Categories c JOIN Products p 
ON c.CategoryId = p.categoryId;

SELECT * FROM Suppliers s JOIN Products p
ON s.supplierId = p.supplierId
WHERE s.SupplierId = 1;







