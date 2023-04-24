-- catesian product (곱집합) 카테시안 곱
SELECT COUNT(*) FROM Products;  -- 77개
SELECT COUNT(*) FROM Categories; -- 8개

SELECT COUNT(*) FROM Products JOIN Categories; -- 616개 (77 x 8)

SELECT * FROM Products JOIN Categories;

-- ON : 조인 조건
SELECT * FROM Products JOIN Categories 
ON Products.CategoryID = Categories.CategoryID;

-- 조인 후 컬럼 수 : 왼쪽 테이블 컬럼수 + 오른쪽 테이블 컬럼수
DESC Products; -- 6
DESC Categories;  -- 3
SELECT * FROM Products JOIN Categories
ON Products.CategoryID = Categories.CategoryID; -- 9 (6+3)

SELECT ProductName, CategoryName
FROM Products JOIN Categories
ON  Products.CategoryID = Categories.CategoryID; 

-- 
SELECT * FROM Products;
SELECT * FROM Suppliers;
-- 상품명, 그 상품을 공급하는 공급자명
SELECT ProductName, SupplierName 
FROM Products JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
ORDER BY 1;  -- 1번 컬럼 기준으로 오름차순

-- ALIAS 사용으로 코드 줄이기
SELECT CustomerName AS Name  FROM Customers;
SELECT ProductName, SupplierName
FROM Products AS p JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID;
-- AS 생략 가능
SELECT ProductName, SupplierName
FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID;

 SELECT p.SupplierID FROM Products p JOIN Suppliers s
 ON p.SupplierID = s.SupplierID;
