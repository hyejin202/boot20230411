USE w3schools;

-- 어제
SELECT CustomerName, ContactName
FROM Customers
WHERE CustomerID = 3;
-- 오늘
SELECT * FROM Products;

CREATE TABLE MyTable34 (
	Col1 INT,
    Col2 VARCHAR(30)
);
INSERT INTO MyTable34 (Col1, Col2)
VALUES(99, 'hello');

SELECT * FROM MyTable34;

CREATE TABLE MyTable35 (
	Col1 DEC(10, 3),
    Col2 VARCHAR(30)
);

SELECT * FROM MyTable35;

CREATE TABLE MyTable36 (
	Col1 INT,
    Col2 VARCHAR(30),
    Col3 DEC(10, 2)
);
INSERT INTO MyTable36
VALUES(22, 'hello', 3.14);

SELECT * FROM MyTable36;
ALTER TABLE MyTable36 MODIFY COLUMN Col1 INT NOT NULL;

CREATE TABLE MyTable37 (
	Age INT,
    Name VARCHAR(20),
    Score DEC(5, 2)
);

SELECT * FROM MyTable37;
SELECT * FROM Products;

CREATE TABLE MyTable38(
	Col1 INT,
    Col2 INT,
    Col3 VARCHAR(200),
    Col4 VARCHAR(200),
    Col5 DEC(10, 3),
    Col6 DEC(10, 3)
);

SELECT * FROM MyTable38;

CREATE TABLE MyTable39 (
	Col1 INT PRIMARY KEY AUTO_INCREMENT,
    Col2 VARCHAR(300),
    Col3 INT
);

DESC MyTable39;

INSERT INTO MyTable39(Col2, Col3)
VALUES('hello', 300);

SELECT * FROM MyTable39;

CREATE TABLE MyTable40 (
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
    Name VARCHAR(30),
    Score DEC(10, 3)
);

SELECT * FROM MyTable40;

DESC MyTable40;

SELECT * FROM Employees;