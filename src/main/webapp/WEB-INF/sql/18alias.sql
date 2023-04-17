-- alias : 별칭

SELECT * FROM Customers;
SELECT CustomerID, CustomerName FROM Customers;
SELECT CustomerID AS id, CustomerName AS name 
FROM Customers; 

-- AS 생략 가능
SELECT CustomerIS id, CustomerName name FROM Customers;

SELECT  CustomerID id, CustomerName name FROM Customers
ORDER BY CustomerID;
SELECT  CustomerID id, CustomerName name FROM Customers
ORDER BY id;
SELECT  CustomerID id, CustomerName name FROM Customers
ORDER BY 1;

SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country , COUNT(CustomerID) NumOfCustomer FROM Customers GROUP BY Country;
SELECT Country c, COUNT(CustomerID) NumOfCustomer FROM Customers GROUP BY c;

SELECT Country c, COUNT(CustomerID) NumOfCustomer 
FROM Customers 
GROUP BY c
ORDER BY NumOfCustomer;

-- keyword 사용시 backtick
SELECT Country AS `FROM`, CustomerName FROM Customers;
SELECT `Country` as `from`, `CustomerName` FROM `Customers`;