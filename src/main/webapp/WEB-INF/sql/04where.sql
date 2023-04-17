-- = 같다
-- <> 다르다 (현재버전 :  != 도 가능)
SELECT * FROM Customers; -- 91개

SELECT * FROM Customers
WHERE Country = 'Mexico';  -- 5개

SELECT * FROM Customers
WHERE Country <> 'Mexico';  -- 91-5 = 86개
SELECT * FROM Customers
WHERE Country != 'Mexico'; 

-- 문제1 ) 나라가 USA가 아닌 공급자들 조회
SELECT * FROM Suppliers
WHERE Country <> 'USA';  -- Country != 'USA';

-- > : 크다
SELECT * FROM Products
WHERE Price >10.00;
SELECT * FROM Products
WHERE ProductName > 'U';
SELECT * FROM Products
WHERE ProductName > 'u';
SELECT * FROM Employees
WHERE BirthDate > '1960-01-01';

-- < : 작다
SELECT * FROM Employees
WHERE BirthDate < '1960-01-01';
SELECT * FROM Products
WHERE Price < 5.00;
SELECT * FROM Customers
WHERE CustomerName < 'c';

