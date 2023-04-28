USE w3schools;

INSERT INTO Customers 
(customerName, contactName, Address, City, Country)
SELECT CustomerName, ContactName, Address, City, Country
FROM Customers;

-- 1페이지 당 20개 레코드
-- 1페이지
SELECT * FROM Customers 
ORDER BY 1 DESC
LIMIT 0, 20;  -- 0부터 20개 (끝에서 0번째~19번째 레코드)
-- 2페이지
SELECT * FROM Customers 
ORDER BY 1 DESC
LIMIT 20, 20; -- 20번부터 20개
-- 3페이지
SELECT * FROM Customers 
ORDER BY 1 DESC
LIMIT 40, 20; -- 20번부터 20개

-- n += 20









