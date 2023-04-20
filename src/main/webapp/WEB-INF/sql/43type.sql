USE w3schools;

CREATE TABLE MyTable30 (
	Col1 INT,
    Col2 VARCHAR(30)
);

DESC MyTable30;

INSERT INTO MyTable30 (Col1, Col2)
VALUES (30, 'java'); -- ok
INSERT INTO MyTable30 (COl1) 
VALUES ('33');  -- ok, 규정 많이 팍팍하지 않음-정수로 변경돼 추가됨
INSERT INTO MyTable30 (Col1) 
VALUES ('Three');  -- X
INSERT INTO  MyTable30(COl2)
VALUES (77); -- ok string으로 변경돼 추가됨
SELECT * FROM MyTable30;

--
CREATE TABLE MyTable31 (
	Col1 DATE,
    Col2 DATETIME
);
-- DATE : YYYY-MM-DD
-- DATETIME : YYYY-MM-DD hh:mm:ss
INSERT INTO MyTable31 (Col1, Col2)
VALUES ('2023-04-20', '2023-04-20 09:29:11');

SELECT * FROM MyTable31;

--
CREATE TABLE MyTable32 (
	Name VARCHAR(30),
    Age INT,
    Price DEC(10, 2),
    Birth DATE,
    Inserted DATETIME
);

SELECT * FROM MyTable32;

DELETE FROM MyTable32
WHERE name = '강백호';

--

CREATE TABLE MyTable33 (
	Title VARCHAR(200),
    Published DATE,
    Price INT,
    Updated DATETIME,
    Weight DEC(10, 3)
);


SELECT * FROM MyTable33;












