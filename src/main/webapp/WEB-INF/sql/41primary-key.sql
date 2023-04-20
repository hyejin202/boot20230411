-- PRIMARY KEY : NOT NULL + UNIQUE

CREATE TABLE MyTable24 (
	Col1 INT PRIMARY KEY  -- : NOT NULL + UNIQUE
);

DESC MyTable23;
DESC MyTable24;

CREATE TABLE MyTable25 (
	col1 INT, 
    PRIMARY KEY (col1)
);
DESC MyTable25;

CREATE TABLE MyTable26 (
	col1 INT,
    col2 INT,
    PRIMARY KEY (col1, col2)   -- 두 컬럼의 조합이 유일
);
DESC MyTable26;
INSERT INTO MyTable26 (col1, col2)
VALUES (1,1);  -- OK
INSERT INTO MyTable26 (col1, col2)
VALUES (2, 2);  -- OK
INSERT INTO MyTable26 (col1, col2)
VALUES (1, 2);  -- OK
SELECT * FROM MyTable26;
 
 
 -- primary key : 하나의 테이블에 하나
CREATE TABLE MyTable27 (
	col1 INT,
    col2 INT,
    PRIMARY KEY (col1) ,
    PRIMARY KEY (col2)
);  -- XXXX  PRIMARY KEY 는 유일함 (하나의 테이블에 1개)

-- 제약사항  (CONSTRAINTS)
-- DEFAULT, UNIQUE, NOT NULL, PRIMARY KEY 

