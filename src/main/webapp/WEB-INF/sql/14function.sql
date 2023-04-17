-- 내장함수
-- COUNT : 레코드 수 리턴

SELECT * FROM Customers;
SELECT COUNT(CustomerID) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;
SELECT COUNT(Country) FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers; -- 21개
SELECT COUNT(CustomerID) FROM Customers
WHERE Country = 'Brazil';

-- DISTINCT  : 중복제거
SELECT country FROM Customers;  -- 91개
SELECT DISTINCT Country FROM Customers;  -- 21개
SELECT country FROM Customers ORDER BY 1;

-- 전체 직원 수
SELECT COUNT(EmployeeID) FROM Employees;
-- 상파울로에 사는 고객 수
SELECT COUNT(CustomerID) FROM Customers
WHERE City = 'São Paulo';
-- 공급자(Suppliers) 가 있는 나라 수(중복제거)
SELECT COUNT(DISTINCT Country) FROM Suppliers;

