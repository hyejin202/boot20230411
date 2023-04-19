-- DATABASE(Schema) : 테이블이 있는 곳

-- CREATE DATABASE : database 만들기
CREATE DATABASE mydb;
USE mydb;
CREATE TABLE MyTable11 (
	Title VARCHAR(10),
    Price INT
);

-- DROP DATABASE : 데이터베이스 지우기
-- 주의하기(복구 불가)
DROP DATABASE mydb;

USE w3schools;

-- mydb1 데이터베이스 만들기
-- mydb1에 새로운 테이블 만들기
-- mydb1데이터베이스 삭제하기
-- w3schools 데이터베이스 사용하기

CREATE DATABASE mydb1;
use mydb1;
CREATE TABLE MyTable12 (
	Name VARCHAR(20),
    BirthDate DATE
);
INSERT INTO MyTable12 (Name, BirthDate) VALUES ('hyejin', '2000-12-11');
SELECT * FROM MyTable12;
DROP DATABASE mydb1;

-- w3schools 데이터베이스 사용하기
USE w3schools;

SELECT * FROM MyTable10;

USE test;
SELECT * FROM MyTable10;  -- 현재 데이터베이스
SELECT * FROM w3schools.MyTable10; -- 다른 DB에 있는 테이블 조회