-- Character(String) 문자형
-- VARCHAR(길이) -- 가변적
CREATE TABLE MyTable02 (
	Col1 VARCHAR(3),
    Col2 VARCHAR(5)
);
INSERT INTO MyTable02 (Col1, Col2)
VALUES ('abc', 'abcde'); -- ok
INSERT INTO MyTable02 (Col1, Col2)
VALUES ('ab', 'abcd'); -- ok
INSERT INTO MyTable02 (Col1, Col2)
VALUES ('abcd', 'abcdef'); -- X

-- 연습 ) 
-- MyTable03 
-- 3개의 컬럼
-- 첫번째 컬럼 type : 문자열 10개까지 저장 가능
-- 두번째 컬럼 type : 문자열 100개까지 저장 가능
-- 세번째 컬럼 type : 문자열 1000개까지 저장 가능
CREATE TABLE MyTable03 (
	Col1 VARCHAR(10),
    Col2 VARCHAR(100),
    Col3 VARCHAR(1000)
);

DESC MyTable03;
-- Numeric (수)
-- int 정수형
-- decimal, dec 실수형
CREATE TABLE MyTable04 (
	Col1 INT
);
DESC MyTable04;
INSERT INTO MyTable04 (Col1) 
VALUES(33);
INSERT INTO MyTable04 (Col1) 
VALUES(1234567890);
INSERT INTO MyTable04 (Col1) 
VALUES(999999999);
INSERT INTO MyTable04 (Col1) 
VALUES(3.14);  -- 소수점 이하 생략
SELECT * FROM MyTable04;

-- 연습 ) MyTable05 만들기
-- 두개의 컬럼이 모두 정수 저장 가능
CREATE TABLE MyTable05 (
	Col1 INT,
    Col2 INT
);
DESC MyTable05;
-- 최대값 : 2147483647
-- 최솟값 : -2147483648
INSERT INTO MyTable05 (Col1, Col2)
VALUES(2147483647, -2147483648);
INSERT INTO MyTable05 (Col1, Col2)
VALUES(2147483648, -2147483649); -- X 범위 넣을 수 있는 정수 범위 벗어남

-- DEC 실수형
-- DEC (총길이, 소수점이하길이)
CREATE TABLE MyTable06 (
	Col1 DEC(5, 2),
    Col2 DEC(3, 1)
);
INSERT INTO MyTable06 (Col1) VALUES(999.99); -- ok
INSERT INTO MyTable06(Col1) VALUES(-999.99);  -- ok
INSERT INTO MyTable06(Col1) VALUES(1000.99); -- fail
INSERT INTO MyTable06(Col1) VALUES(999.999); -- fail

SELECT * FROM MyTable06;

-- 연습 ) MyTable07 만들기
-- 두개 컬럼(실수형), 총길이, 소수점이하 길이 직접 작성
CREATE TABLE MyTable07 (
	Col1 DEC(5, 3),
    Col2 DEC(4, 2)
);

DESC MyTable07;
INSERT INTO MyTable07 (Col1, Col2) VALUES(3.145, 7.14); -- ok
INSERT INTO MyTable07 (Col1, Col2) VALUES(123.456, 55.555);  -- X
SELECT * FROM MyTable07;

-- 날짜시간
-- DATE 날짜 (YYYY-MM-DD)
-- DATETIME 날짜시간 (YYYY-MM-DD hh:mm:ss)
CREATE TABLE MyTable08 (
	Col1 DATE,
    Col2 DATETIME
);
DESC MyTable08;

INSERT INTO MyTable08 (Col1) VALUES ('2023-04-19');
INSERT INTO MyTable08 (Col1) VALUES ('9999-12-31'); -- 까지 가능 (최대값)
INSERT INTO MyTable08 (Col1) VALUES ('1000-01-01'); -- 최소값
INSERT INTO MyTable08 (Col2) VALUES ('2023-04-19 11:41:24');
INSERT INTO MyTable08 (Col2) VALUES ('9999-12-31 23:59:59'); --  까지 가능(최대값)
INSERT INTO MyTable08 (Col1) VALUES ('1000-01-01 00:00:00'); -- 최소값

SELECT now(); -- 현재 날짜와 시간

INSERT INTO MyTable08 (Col1, Col2) VALUES (now(), now());
INSERT INTO MyTable08 (Col1, Col2) VALUES (now(), now());
SELECT * FROM MyTable08;

-- 예제 ) MyTable09 (학생 정보)
-- 학생이름, 성별, 생년월일, 기타정보, 시험성적
CREATE TABLE MyTable09 (
	Name VARCHAR(20),
    Gender VARCHAR(1),
    BirthDate DATE,
    Score DEC(5, 2),
    Extra VARCHAR(1000)
);
INSERT INTO MyTable09 (Name, Gender, BirthDate, Score, Extra) 
VALUES ('손흥민', '여', '2000-02-02', 99.99, '축구선수');
SELECT * FROM MyTable09;

-- 연습 ) 내가 가지고 있는 교재정보 저장 MyTable10
CREATE TABLE MyTable10 (
	BookName VARCHAR(20),
    Publish VARCHAR(20),
    Price INT
);
INSERT INTO MyTable10 (BookName, Publish, Price)
VALUES('JSP2.3 웹프로그래밍', '가마출판사', 20000);
INSERT INTO MyTable10 (BookName, Publish, Price)
VALUES ('HTML, CSS, JS', '중앙출판사', 25000);
INSERT INTO MyTable10 (BookName, Publish, Price)
VALUES ('그 많던 싱아는 누가 다 먹었을까', 'abc출판사', 14000);
INSERT INTO MyTable10 (BookName, Publish, Price)
VALUES('뽀또 치즈타르트', 'CROWN', 5000);
SELECT * FROM MyTable10;

