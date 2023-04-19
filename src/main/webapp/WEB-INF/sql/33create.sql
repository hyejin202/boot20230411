DESC MyTable10;

-- CREATE TABLE MyTable11 (
	-- Bookname VARCHAR(20)
-- );

-- SHOW CREATE TABLE : 테이블 생성 명령 보기
SHOW CREATE TABLE MyTable10;
-- 생성 명령 복붙 (데이터는 복사 안됨)
CREATE TABLE `MyTable11` (
   `BookName` varchar(20) DEFAULT NULL,
   `Publish` varchar(20) DEFAULT NULL,
   `Price` int(11) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
 ;
 DESC MyTable11;
 SELECT * FROM MyTable11;
 
 -- 같은 컬럼명 타입으로 새로운 테이블 만들기, 데이터도 함께 복붙
 CREATE TABLE MyTable12 AS SELECT * FROM MyTable10;
 DESC MyTable12;
 SELECT * FROM MyTable12;