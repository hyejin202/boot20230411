-- UNIQUE 중복 허용 안함

CREATE TABLE MyTable21 (
	Col1 INT,
    Col2 INT UNIQUE
);

INSERT INTO MyTable21 (Col1, Col2)
VALUES (1, 1);  -- ok
INSERT INTO MyTable21 (Col1, Col2)
VALUES (2, 2);  -- ok
INSERT INTO MyTable21 (Col1, Col2)
VALUES (2, 3);  -- ok 
INSERT INTO MyTable21 (Col1, Col2)
VALUES (4, 3);  -- X (Col2 중복 허용X)
SELECT * FROM MyTable21;

DESC MyTable21;

-- 예제
CREATE TABLE MyTable22 (
	ssn VARCHAR(13) UNIQUE,
	name VARCHAR(20)
);
-- ssn이 key
DESC MyTable22;
INSERT INTO MyTable22 (ssn, name) 
VALUES ('1', '정대만');
INSERT INTO MyTable22 (ssn, name) 
VALUES ('1', '송태섭');  -- X
INSERT INTO MyTable22 (ssn, name) 
VALUES (NULL, '채소연'); -- ok
INSERT INTO MyTable22 (ssn, name) 
VALUES (NULL, '강백호'); -- ok
SELECT * FROM MyTable22;

CREATE TABLE MyTable23 (   
	Col1 VARCHAR(20) NOT NULL UNIQUE DEFAULT ''
);
-- Col1 : PRIMARY kEY

DESC MyTable23;