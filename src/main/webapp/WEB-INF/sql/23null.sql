SELECT * FROM Products ORDER BY 1 DESC;
-- IFNULL : null이면 다른 값으로 변경
SELECT ifnull(0, 100);  -- 0
SELECT ifnull('kim', 'lee');  -- kim
SELECT ifnull(NULL, 100); -- 100
SELECT ifnull(NULL, 'park'); -- park

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit
FROM Products ORDER BY 1 DESC;
SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, 
IFNULL(Price, 0) Price
FROM Products ORDER BY 1 DESC;

SELECT AVG(IFNULL(Price, 0)) AS Average FROM Products WHERE CategoryID = 2;
-- 19.767..
SELECT AVG(Price) AS Average FROM Products WHERE CategoryID = 2;
SELECT AVG(IFNULL(Price, 0)) AS Average FROM Products; -- 28.135...

-- 문제1) 고객테이블에서 CustomerID, CustomerName, ContactName, Address 조회
-- ContactName이 null이면 'Anonymous'로 
-- Address가 null이면 'Homeless'로 조회
SELECT  CustomerID,  
		CustomerName, 
        ifnull(ContactName, 'Anonymous') AS contactName, 
        ifnull(Address, 'Homeless') AS Address 
FROM Customers
ORDER BY 1 DESC;

