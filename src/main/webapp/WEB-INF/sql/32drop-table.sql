USE w3schools;

-- DROP TABLE 테이블 삭제
-- 주의해서 사용하기

DESC MyTable01;

DROP TABLE MyTable01; -- 주의

-- 연습 : MyTable02, MyTable03  테이블 drop
DROP TABLE MyTable02;
DROP TABLE MyTable03;

DESC MyTable02;
DESC MyTable03;

-- TRUNCATE : 테이블 유지, 데이터 삭제
SELECT * FROM MyTable04;
TRUNCATE MyTable04;