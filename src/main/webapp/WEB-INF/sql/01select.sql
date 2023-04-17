-- SELECT
-- 데이터 읽기(가져오기)

-- table (행, 열)
-- 행(row, record)
-- 열(column, attribute, field)

-- SELECT 열목록
-- FROM 테이블명
-- 쿼리 끝에 ; 작성

-- Customers 테이블에서 
-- 모든 레코드(행)와 모든 필드(열)를 가져와라(읽어라)
SELECT * FROM Customers;  -- 실행 ctrl + enter

-- 문제1) Employees 테이블에서
-- 모든 행과 모든 열을 읽기
select * from Employees;  -- 소문자ok, 대문자가 관습

select * from Categories;
select * from OrderDetails;
select * from Orders;
select * from Products;
select * from Shippers;
select * from Suppliers;
SELECT * FROM supplies; -- X

-- 작성관습
-- sql은 대소문자 구분 안함()
-- 키워드는 대문자 테이블명, 칼러명은 소문자













