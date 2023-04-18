SELECT * FROM Products;
INSERT INTO Employees (EmployeeID, lastName, firstName)
VALUES(11, '박지성', '두개의 심장');
INSERT INTO Employees (lastName, firstName)
VALUES ('차범근', '차붐');

-- 테이블 정보 보기
DESC Employees; -- description

-- Customers 테이블의 자동 증가 컬럼을 찾기
DESC Customers;   -- customerID

INSERT INTO Customers (CustomerName, ContactName)
VALUES('정대만', 'daeman');

SELECT * FROM Customers ORDER BY 1 DESC;

SELECT * FROM Suppliers;
-- 문제1) 새 공급자 데이터 추가
-- (SupplierID, SupplierName, City)
-- 자동증가 컬럼은 직접 값을 넣지 않고 추가
DESC Suppliers; -- SupplierID
INSERT INTO Suppliers (SupplierName, City)
VALUES('강백호', 'Busan');
SELECT * FROM Suppliers ORDER BY 1 DESC;

SELECT * FROM Customers ORDER BY 1 DESC;

SELECT * FROM Employees ORDER BY 1 DESC;

