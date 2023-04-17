-- null과의 연산은 모두 false
SELECT * FROM Products WHERE CategoryID = 2; -- 14
SELECT * FROM Products 
WHERE CategoryID =2
	AND Price  >= 25.00;  -- 4
    
SELECT * FROM Products 
WHERE CategoryID =2
	AND Price  < 25.00;  -- 10(X) 8(o), null값 2개 있는데 null과의 연산은 false 이므로 8개만 뜸

SELECT * FROM Products 
WHERE CategoryID = 2
	AND IFNULL(Price, 0) < 25.00;  -- 10
    
SELECT * FROM Products 
WHERE CategoryID=2 AND Price IS NULL;

SELECT ProductName, Price*1300 FROM Products 
WHERE CategoryID=2; -- 산술 결과도 NULL
SELECT ProductName, ifnull( Price*1300 ) FROM Products 
WHERE CategoryID=2; -- 산술 결과도 NULL