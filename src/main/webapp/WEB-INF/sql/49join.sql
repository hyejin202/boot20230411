SELECT * FROM Products;

SELECT COUNT(*) FROM Products; -- 77
SELECT COUNT(*) FROM Categories; -- 8
SELECT COUNT(*) FROM Suppliers; -- 29
DESC Products; -- 6개 열
DESC Categories; -- 3개 열
DESC Suppliers; -- 8개 열

SELECT * FROM Products JOIN Categories JOIN Suppliers; -- 17개의 열
SELECT COUNT(*) FROM Products JOIN Categories JOIN Suppliers;  -- 17864개의 행

SELECT * FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
											JOIN Suppliers s ON p.SupplierID = s.SupplierID;
                                            
-- 예제1 ) 1번 상품의 상품명, 카테고리명, 공급자명
SELECT p.ProductName, c.CategoryName, s.SupplierName
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
							JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.ProductId = 1;

-- 예제2) '1996-07-04'에 주문한 상품명 조회
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

SELECT o.OrderDate, p.ProductName
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
						JOIN Products p ON od.ProductID = p.ProductID
WHERE o. OrderDate = '1996-07-04';

-- 예제3) '1996-07-04'의 매출 조회
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

SELECT SUM(od.Quantity * p.Price) 
FROM OrderDetails od JOIN  Orders o ON o.OrderID = od.OrderID
						JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 일별 매출 조회 (날짜 순으로 결과 조회)
SELECT o.OrderDate, SUM(od.Quantity * p.Price) 매출
FROM  OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
									JOIN Orders o ON o.OrderID = od.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate ASC;

-- 직원별 처리금액
SELECT o.EmployeeID, e.LastName, e.FirstName,  SUM(od.Quantity * p.Price) 처리금액
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
									JOIN Orders o ON o.OrderID = od.OrderID
									JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY EmployeeID
ORDER BY 처리금액 DESC;

                            
-- 상품별 판매금액
SELECT p.ProductID, p.ProductName, SUM(od.Quantity * p.Price) 판매금액
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID 
GROUP BY od.ProductID
ORDER BY 판매금액 DESC;

-- 고객별 소비금액
SELECT o.CustomerId, c.CustomerName, SUM(od.Quantity * p.Price) 소비금액
FROM Orders o  JOIN OrderDetails od ON o.OrderID = od.OrderID
						JOIN Products p ON od.ProductID = p.ProductID
                        JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY 소비금액 DESC;
