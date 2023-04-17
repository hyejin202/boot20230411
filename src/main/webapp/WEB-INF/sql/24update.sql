-- update : 레코드 수정

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers  -- 테이블 명
SET CustomerName = '서태웅'  -- 변경할 컬럼과 값
WHERE CustomerID = 1;  -- 변경할 레코드 조건

UPDATE Customers
SET                                            -- 변경할 컬럼과 값 (,)
		CustomerName = '정대만',
        City = 'Seoul',
        Country = 'Korea'
WHERE CustomerID = 1;

SELECT * FROM Customers;

-- 문제1) 1번 공급자의 이름, 도시, 나라 변경
SELECT * FROM Suppliers WHERE SupplierID = 1;

UPDATE Suppliers
SET SupplierName = '채치수',
		City = 'jeju',
        Country = 'Korea'
WHERE SupplierID = 1;

SELECT * FROM Suppliers;

-- 
SELECT * FROM Suppliers 
WHERE Country = 'USA';

UPDATE Suppliers 
SET
		SupplierName = '송태섭',
		Country = 'France'
WHERE Country = 'USA';
SELECT * FROM Suppliers ;

UPDATE Suppliers 
SET contactName = '북산',
		city = 'Busan';
SELECT * FROM Suppliers;


UPDATE Suppliers
SET 
		postalCode = concat('J', PostalCode)
WHERE Country='Japan';

SELECT * FROM Suppliers WHERE country='Japan';

--

SELECT * FROM Products;
INSERT INTO Products 
VALUES
(1, 'cake', null, null, null, 300);
INSERT INTO Products 
VALUES
(2, 'pizza', null, null, null, 100);

UPDATE Products 
SET 
	Price = Price * 1300;
    
SELECT * FROM Products;