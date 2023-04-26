CREATE DATABASE leetcode183;
USE leetcode183;

CREATE TABLE Customers(
	id INT PRIMARY KEY,
    name VARCHAR(200)
);

INSERT INTO Customers 
VALUES (1, 'Joe'), (2, 'Henry'), (3, 'Sam'), (4, 'Max');

SELECT * FROM Customers; 

CREATE TABLE Orders(
	id INT PRIMARY KEY,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

INSERT INTO Orders 
VALUES (1, 3), (2, 1);

SELECT * FROM Orders;

-- 문제) 한번도 주문하지 않은 고객 조회
SELECT c.name Customers
FROM Customers c  LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.id IS NULL; 

-- 서브쿼리
SELECT name FROM Customers
WHERE id IN (SELECT customerId FROM Orders); -- 주문한 적 있는 고객

SELECT name FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders); -- 주문한 적 없는 고객