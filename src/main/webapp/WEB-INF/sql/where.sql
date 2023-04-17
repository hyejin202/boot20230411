-- WHERE : 특정 레코드를 선택하는 조건절
SELECT * FROM Customers
WHERE Country = 'Mexico';

SELECT * FROM Customers
WHERE Country = 'UK';

SELECT * FROM Customers
WHERE Country = 'France'; -- 스트링 필드는 ''으로 묶기
SELECT * FROM Customers
WHERE Country = 'france';  -- 대소문자 구분 안함

SELECT * FROM Customers
WHERE CustomerID = 3;  -- 수 필드값은 따옴표 생략 가능
SELECT * FROM Customers
WHERE CustomerID = '3';   

SELECT CustomerName FROM Customers
WHERE Country = 'France';

--  Country가 USA인 공급자 이름(SupplierName)과 주소(Address) 를
-- 공급자(Suppliers) 테이블에서 조회
SELECT SupplierName, Address FROM Suppliers
WHERE Country = 'USA';



