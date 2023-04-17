-- HAVING : 집계함수의 조건 설정

SELECT Country, COUNT(CustomerID)  FROM Customers GROUP BY Country;

-- 5명 이상의 고객이 있는 나라 조회
-- XX
SELECT Country, COUNT(CustomerID) numOfCustomer FROM Customers
WHERE numOfCustomer >= 5 -- record를 거르는 조건
GROUP BY Country;
-- group by 조건 Having절에
SELECT Country, COUNT(CustomerID) numOfCustomer FROM Customers
GROUP BY Country
HAVING  numOfCustomer >= 5;

-- 문제 ) 상품 평균 가격이 30달러 이상인 카테고리 조회
SELECT CategoryID id, AVG(Price) average FROM Products
GROUP BY CategoryID
HAVING average >= 30.00;
-- 문제2) 카테고리별 상품 최고 가격이 100달러 이상인 카테고리
SELECT CategoryID id, MAX(Price) max FROM Products
GROUP BY CategoryID
HAVING max >= 100.00;
