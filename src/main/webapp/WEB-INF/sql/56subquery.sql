USE w3schools;
-- FROM절에 서브쿼리 

SELECT lastName, firstName FROM Employees;

SELECT lastName, firstName 
FROM (SELECT lastName, firstName FROM Employees) emp
WHERE lastName >= 'd' AND lastName < 'e';

SELECT lastName, firstName 
FROM Employees
WHERE lastName >= 'd' AND lastName < 'e';

-- 고객별 소비금액(49파일)
SELECT AVG(소비금액) FROM
(SELECT o.CustomerId, c.CustomerName, SUM(od.Quantity * p.Price) 소비금액
FROM Orders o  JOIN OrderDetails od ON o.OrderID = od.OrderID
						JOIN Products p ON od.ProductID = p.ProductID
                        JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY 소비금액 DESC) t1;

-- (직원별 처리금액) 평균
SELECT AVG(처리금액) FROM
(SELECT o.EmployeeID, e.LastName, e.FirstName,  SUM(od.Quantity * p.Price) 처리금액
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
									JOIN Orders o ON o.OrderID = od.OrderID
									JOIN Employees e ON e.EmployeeID = o.EmployeeID
GROUP BY EmployeeID
ORDER BY 처리금액 DESC) t1;
-- 2)
SELECT AVG(처리금액) average
FROM
(SELECT o.EmployeeID,  SUM(od.Quantity * p.Price) 처리금액
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
									JOIN Orders o ON o.OrderID = od.OrderID
									JOIN Employees e ON e.EmployeeID = o.EmployeeID
GROUP BY EmployeeID) t1;

-- 카테고리별 평균상품 가격 조회(평균상품 가격이 30.00달러 이상인 것만)
SELECT * FROM Categories;
SELECT * FROM Products;

-- 1) 가장 나음
SELECT categoryId, AVG(Price)
FROM Products  
GROUP BY CategoryId
HAVING AVG(Price >= 30);

-- 2) 서브쿼리
SELECT CategoryId, average
FROM
(SELECT categoryId, AVG(Price) average
FROM Products 
GROUP BY CategoryId) t1
WHERE average >= 30.00;

-- 3) 조인
SELECT t1.CategoryId, c.categoryName, average
FROM
(SELECT categoryId, AVG(Price) average
FROM Products 
GROUP BY CategoryId) t1 JOIN Categories c ON t1.categoryId = c.categoryId
WHERE average >= 30.00;



















