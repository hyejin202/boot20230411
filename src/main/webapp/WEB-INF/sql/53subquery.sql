-- 서브쿼리 (쿼리 안의 쿼리)
-- 책 430쪽
-- 1) SELECT 문이다.
-- 2) 괄호 안에 있다.
-- 3) 세미콜론이 없다.

-- 작성 가능한 위치
-- WHERE, SELECT, FROM, HAVING

USE w3schools;
SELECT categoryId FROM Products WHERE ProductId = 1;
SELECT categoryName FROM Categories
WHERE CategoryId = 1;

SELECT categoryName FROM Categories
WHERE CategoryId = (SELECT categoryId 
								FROM Products 
                                WHERE ProductId = 1);

-- 문제2) 2번 공급자와 같은 나라에 살고 있는 고객 이름 조회
SELECT Country FROM Suppliers WHERE SupplierId = 2;

SELECT Country, CustomerName FROM Customers
WHERE Country = (SELECT Country
							FROM Suppliers
							WHERE SupplierId = 2);

-- 문제) 평균가격보다 높은 가격의 상품들 조회
SELECT AVG(Price) FROM Products; -- 평균가격

SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products );















