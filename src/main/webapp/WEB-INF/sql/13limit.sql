-- LIMIT 3  위에서부터 3개 (= LIMIIT 0, 3)

-- LIMIT n, m       n번부터 m개 

SELECT * FROM Customers ORDER BY CustomerID;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 3;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 3;

SELECT * FROM Customers ORDER BY CustomerID LIMIT 3, 3;
SELECT * FROM Customers ORDER BY CustomerID LIMIT 7, 9;

-- 두번째로 나이가 많은 직원 조회
SELECT * FROM Employees ORDER BY BirthDate LIMIT 1, 1;
-- 2번 카테고리 상품 중 가격이 두번째로 비싼 상품 조회
SELECT * FROM Products
WHERE CategoryID = 2
ORDER BY Price DESC 
LIMIT 1, 1; 

