USE w3schools;

-- ORDER BY : 결과의 순서를 정할 때 사용

SELECT CustomerName, ContactName -- column 명들
FROM Customers                                 -- table
WHERE CustomerID < 10    -- 선택할 record 조건
ORDER BY ContactName ASC;  --  contactName 오름차순

SELECT CustomerName, ContactName -- column 명들
FROM Customers                                 -- table
WHERE CustomerID < 10    -- 선택할 record 조건
ORDER BY ContactName DESC;  --  contactName 내림차순

SELECT * FROM Customers
ORDER BY CustomerName DESC;

SELECT * FROM Customers
ORDER BY Country ASC;

SELECT * FROM Customers
ORDER BY Country;   -- order by asc/desc 생략하면 asc로

-- 모든 상품을 가격순으로 조회(낮은 가격이 먼저 조회)
SELECT * FROM Products
ORDER BY Price ASC;

-- 모든 직원을 생년월일순 조회 (어린 직원이 먼저 조회)
SELECT * FROM Employees
ORDER BY BirthDate DESC;

-- 컬럼 index도 사용 가능
SELECT * FROM Products ORDER BY Price; -- price는 6번째 컬럼
SELECT * FROM Products ORDER BY 6;

SELECT * FROM Products ORDER BY 6 DESC;

-- 컬럼 index 사용해서 모든 고객을 도시 이름 순으로 정렬 조회
SELECT * FROM Customers ORDER BY 5;
SELECT CustomerID, CustomerName, City FROM Customers ORDER BY 3; -- 컬럼인덱스 사용시 select절에 맞게...

-- 여러 컬럼 기준 정렬 가능
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY 7, 5;
SELECT CustomerID, CustomerName, Country, City FROM Customers ORDER BY Country, City;
SELECT CustomerID, CustomerName, Country, City FROM Customers ORDER BY 3, 4;

-- 여러 컬럼 기준으로 정렬시 컬럼당 오름차순, 내림차순 지정 가능
SELECT * FROM Customers ORDER BY Country ASC, City DESC;
SELECT * FROM Customers ORDER BY Country DESC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City DESC;

-- 상품을 카테고리(오름차순) 가격(내림차순)으로 정렬
SELECT * FROM Products ORDER BY CategoryID ASC, Price DESC;


