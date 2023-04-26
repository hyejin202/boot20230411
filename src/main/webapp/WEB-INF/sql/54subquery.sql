SELECT DISTINCT Country FROM Suppliers; -- 공급자가 있는 나라(중복X)조회, 여러 레코드

SELECT * FROM Customers
WHERE Country = (SELECT DISTINCT Country FROM Suppliers);

SELECT * FROM Customers
WHERE Country IN (SELECT DISTINCT Country FROM Suppliers);

-- '1996-07-04'에 주문한 상품명 조회
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
SELECT * FROM Products;

SELECT ProductName FROM Products 
WHERE ProductID IN (SELECT ProductID FROM OrderDetails
								WHERE OrderID IN (SELECT OrderID FROM Orders 
																WHERE OrderDate = '1996-07-04'));
SELECT p.ProductName
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
							JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate = '1996-07-04';

-- 주문한 적 없는 고객
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT CustomerName FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- 주문한 적 있는 고객
SELECT CustomerName FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders); 

 SELECT DISTINCT c.CustomerName
 FROM Customers c JOIN Orders o 
 ON c.CustomerID = o.CustomerID;