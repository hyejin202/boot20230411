-- +, -, *, /, %
SELECT * FROM Products;
SELECT ProductName, Price*1300 FROM Products; 
SELECT ProductName, Price*1300 AS wonPrice FROM Products; 

SELECT ProductName, Price / 100 FROM Products;
SELECT ProductName, Price + 100 FROM Products;
SELECT ProductName, Price - 100 FROM Products;

-- 문자열 연결
SELECT City + Country FROM Customers;  -- X
SELECT CONCAT(city, Country) FROM Customers; -- ok
SELECT CONCAT(city, ",", Country)  FROM Customers; -- ok
SELECT CONCAT(city, " ", Country)  cityOfCountry FROM Customers; -- ok

-- 직원 이름 "firstName, lastName" 형식으로 조화
SELECT concat(firstName, ", ", lastName) fullName FROM Employees;

-- 원화(* 1300)로 10만원 이상인 상품들 조회
SELECT * FROM Products WHERE Price*1300 >= 100000;
SELECT * FROM Products WHERE Price >= 100000 / 1300;
SELECT *,  Price*1300 won FROM Products WHERE Price*1300 >= 100000;

-- 부분 문자열 : substring
-- 첫번재 파라미터 : 원본 문자열
-- 두번째 파라미터 : 시작 인덱스
-- 세번째 파라미터 : 길이
SELECT substring('hello world', 3, 3);   -- 첫글자 인덱스 : 1

SELECT CustomerName FROM Customers;
SELECT substring( CustomerName, 1, 3) FROM Customers;

-- 고객테이블에서 고객명, 나라이름(앞3글자만) 조회
SELECT CustomerName, substring(Country, 1,  3) Country  FROM Customers;


