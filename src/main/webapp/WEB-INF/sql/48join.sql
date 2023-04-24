DESC Orders;

SELECT * FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID; -- 830
SELECT * FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID -- 832
WHERE o.OrderID IS NULL; -- 주문한 적 없는 고객

-- 예) 주문을 처리한 적 없는 직원 조회
DESC Orders;
SELECT * FROM Orders o JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL;

