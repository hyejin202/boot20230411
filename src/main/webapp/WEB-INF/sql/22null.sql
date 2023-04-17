--  null : 값이 없음
-- null vs  '' 같을 수도 있고 아닐 수도 있고 회사마다 다름 (mysql은 같다고 표현, oracle은 같지 않다고 표현)

-- IS NULL : 값이 null인가?
SELECT * FROM Suppliers
WHERE ContactName = '';   -- 0개

SELECT * FROM Suppliers 
WHERE ContactName IS NULL;   -- 1개

-- IS NOT NULL (NOT 컬럼 IS NULL):  NULL이 아닌 컬럼 조회
SELECT * FROM Suppliers
WHERE NOT ContactName IS NULL
ORDER BY 1 DESC;
SELECT * FROM Suppliers
WHERE ContactName IS NOT NULL
ORDER BY 1 DESC;

-- Customers 테이블에서 Address 컬럼이 NULL인 레코드 조회
SELECT * FROM Customers
WHERE Address IS NULL;
-- Customers 테이블에서 Address 컬럼이 NULL이 아닌 레코드 조회
SELECT * FROM Customers
WHERE Address IS NOT NULL;

-- 집계 함수에서 null 제외
SELECT COUNT(CustomerID) FROM Customers;
SELECT COUNT(Address) FROM Customers;  -- null값은 세지 않음
SELECT COUNT(*) FROM Customers;

-- 공급자 테이블에서 SupplierID 컬럼의 값 수 구하기
SELECT COUNT(SupplierID) FROM Suppliers;
-- 공급자 테이블에서 ContactName컬럼의 값 수 구하기
SELECT count(ContactName) FROM Suppliers;
SELECT count(*) FROM Suppliers;

SELECT * FROM Products ORDER BY 1 DESC;
INSERT INTO Products 
VALUES(78, 'Cake', 12, 2, '조각', NULL);
INSERT INTO Products 
(ProductID, ProductName, SupplierID, CategoryID, Unit)
VALUES (79, 'Pizza', 12, 2, '조각');

SELECT * FROM Products 
WHERE CategoryID = 2 ORDER BY 1 DESC;

SELECT SUM(Price) FROM Products WHERE ProductID = 2;
-- 276.75
SELECT 276.75 / 14;  -- 19.767...
SELECT 276.75/12;  -- 23.062...
SELECT AVG(Price) FROM Products WHERE CategoryID = 2;