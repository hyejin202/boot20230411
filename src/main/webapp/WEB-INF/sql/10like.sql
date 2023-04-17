-- LIKE

SELECT * FROM Customers 
WHERE CustomerName LIKE 'a%'; -- 'a'로 시작
SELECT * FROM Customers 
WHERE CustomerName LIKE '%a'; -- 'a'로 끝
SELECT * FROM Customers 
WHERE CustomerName LIKE '%or%'; -- 'or' 글자 포함
SELECT * FROM Customers 
WHERE CustomerName LIKE '_r%'; -- 아무첫글자 + 'r'로 시작
SELECT * FROM Customers 
WHERE CustomerName LIKE 'a_%'; -- 'a'로 시작, 그 뒤 한글자 이상
SELECT * FROM Customers 
WHERE CustomerName LIKE 'a__%'; -- 'a'로 시작, 그 뒤 두글자 이상
SELECT * FROM Customers 
WHERE ContactName LIKE 'a%o'; -- 'a'로 시작하고 'o'로 끝 ('ao'도 가능)

-- 고객명 (CustomerName). 계약명(ContanceName)에 'or'이 포함된 고객들 조회
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%' OR ContactName LIKE '%or%';

SELECT * FROM Employees;