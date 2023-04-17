SELECT * FROM Customers;

-- CustomerName 필드만
SELECT CustomerName FROM Customers;
SELECT ContactName FROM Customers;
SELECT Country FROM Customers;
-- 여러 필드 가져올 시 , 로 구분
SELECT CustomerName, ContactName FROM Customers;
SELECT CustomerName, ContactName, Country FROM Customers;
-- 작성 순서에 따라 테이블 필드 순서 정해짐
SELECT Country, CustomerName, ContactName FROM Customers;

-- 문제1) Employees 테이블에서 BirthDate, FirstName, LastName을 조회
SELECT BirthDate, FirstName, LastName FROM Employees;
SELECT BirthDate, FirstName, Lastname FROM Employees;

-- 문제2) Shippers 테이블에서 ShipperName과 ShipperID 조회
SELECT shippername, shipperid FROM Shippers;

-- 문제3) Products 테이블에서 SupplierId, ProductName, ProductID조회
SELECT supplierid, productname, productid FROM Products;