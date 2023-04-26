SELECT * FROM Products;
-- SELECT절에 서브쿼리

SELECT ProductName, CategoryId FROM Products;

SELECT ProductName, 
			(SELECT CategoryName 
            FROM Categories 
            WHERE  CategoryId = p.CategoryId)  CategoryName
FROM Products p;

-- 상품명, 상품을 공급하는 공급자명
SELECT * FROM Products;
SELECT * FROM Suppliers;
-- 서브쿼리
SELECT ProductName, 
				(SELECT SupplierName
                FROM Suppliers
                WHERE SupplierID = p.SupplierID) 공급자명
FROM Products p;
-- 조인
SELECT p.ProductName, s.SupplierName
FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID;

