USE w3schools;

DESC MyTable13;

-- MODIFY COLUMN : 컬럼 타입 변경
ALTER TABLE MyTable13 
MODIFY COLUMN col20 VARCHAR(40);

SELECT * FROM MyTable13;

ALTER TABLE MyTable13
MODIFY COLUMN col13 VARCHAR(40);  -- ok
ALTER TABLE MyTable13
MODIFY COLUMN col13 VARCHAR(3); -- X

-- 연습 ) 아무 컬럼이나 타입 변경
ALTER TABLE MyTable13
MODIFY COLUMN col9  DEC(5, 3);

-- 
ALTER TABLE MyTable13
MODIFY COLUMN col8 VARCHAR(9) FIRST;
DESC MyTable13;
ALTER TABLE MyTable13
MODIFY COLUMN col8 VARCHAR(9) AFTER col6;

-- 연습) MyTable13의 아무 컬럼의 위치 변경
ALTER TABLE MyTable13
MODIFY COLUMN col5 VARCHAR(10) FIRST;

DESC MyTable05;
