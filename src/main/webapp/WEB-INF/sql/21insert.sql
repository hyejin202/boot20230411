-- INSERT : 테이블에 새 레코드 입력
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(92, '박지성', '두개의 심장', 'London', 'Seoul', '1234567', 'Korea');

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- 모든 컬럼에 값을 넣을 때 컬럼명 생략 가능
INSERT INTO Customers
VALUES(93, '차범근', '차붐', '프랑크푸르트', 'Seoul', '123789456', 'Korea');

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- 특정 컬럼에만 값을 넣을 때 컬럼명 작성해야 함
INSERT INTO Customers (CustomerID, CustomerName, City, Country)
VALUES
(94, '송태섭', 'Tokyo', 'Japan');

SELECT * FROM Customers ORDER BY CustomerID DESC;

SELECT * FROM Suppliers ORDER BY 1 DESC;
-- 문제1) Supplier 테이블에 30번째 공급자 추가(모든 열)
INSERT INTO Suppliers
VALUES(30, '정대만', 'slamdunk', 'mapo', 'Seoul', '136908', 'Korea', '010-7894-5544');

SELECT * FROM Suppliers ORDER BY 1 DESC;

-- 문제2) Supplier 테이블에 31번째 공급자 추가
-- SupplierID, SupplierName, City, Country
INSERT INTO Suppliers
(SupplierID, SupplierName, City, Country)
VALUES
(31, '전소원', 'jeju', 'Korea');

SELECT * FROM Suppliers ORDER BY 1 DESC;

 