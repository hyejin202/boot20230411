-- delete : 테이블의 record 지우기

-- 매우 주의!!!해서 사용하기
-- 지우기 전 같은 테이블 같은 조건으로  select로 먼저 확인한 후에 delete지우기
SELECT * FROM Customers WHERE CustomerID= 94;

DELETE FROM Customers -- 지울 테이블 명
WHERE CustomerID= 94; -- 지울 레코드의 조건

-- 1 row affected message 확인(1줄 영향미쳤는지)

SELECT * FROM Customers ORDER BY 1 DESC;

-- 93번 고객 지우기
SELECT * FROM Customers 
WHERE CustomerID=93;

DELETE FROM Customers 
WHERE CustomerID=93;

SELECT * FROM Customers ORDER BY 1 DESC;

-- 78번 상품 지우기
SELECT * FROM Products 
WHERE ProductID = 78;

DELETE FROM Products 
WHERE ProductID=78;

SELECT * FROM Products 
ORDER BY 1 DESC;

-- 79번 상품 지우기
SELECT * FROM Products WHERE ProductID = 79;

DELETE FROM Products 
WHERE ProductID=79;

SELECT * FROM Products 
ORDER BY 1 DESC;

--
DELETE FROM Products WHERE CategoryID = 1;
--
SELECT COUNT(*) FROM Products;

DELETE FROM Products;
SELECT * FROM Products;

-- 문제1) 고객테이블에서 USA에 사는 고객들 지우기
DELETE FROM Customers WHERE Country='USA';
SELECT * FROM Customers WHERE Country='USA';

-- 문제2) 모든 직원 지우기
DELETE FROM Employees;
SELECT * FROM Employees;

