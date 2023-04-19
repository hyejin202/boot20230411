-- DEFAULT 기본값 정할 수 있음
CREATE TABLE MyTable14 (
	Col1 INT,
    Col2 INT DEFAULT 99
);

INSERT INTO MyTable14 (Col1, Col2)
VALUES (100, 200);

INSERT INTO MyTable14 (Col1)
VALUES (100);  -- Col2에 99입력됨
INSERT INTO MyTable14 (Col2)
VALUES (200); -- Col1은 null임

SELECT * FROM MyTable14;

CREATE TABLE MyTable15 (
	Col1 VARCHAR(30),
    Col2 VARCHAR(30) DEFAULT '기본'
);

-- 연습) 3개 행 추가
-- 1)  Col1, Col2에 모두 값 넣기
-- 2) Col1에만 값 넣기
-- 3) Col2에만 값 넣기
INSERT INTO MyTable15(Col1, Col2)
VALUES ('오늘', '내일');
INSERT INTO MyTable15(Col1)
VALUES ('더움'); -- Col2에 '기본'입력됨
INSERT INTO MyTable15(Col2)
VALUES ('비옴'); -- Col1은 null

SELECT * FROM MyTable15;
DESC MyTable15;

CREATE TABLE MyTable16 (
	Col1 DATE DEFAULT '2000-01-01',
    Col2 DATE DEFAULT NOW(),
    Col3 DATETIME DEFAULT '1900-01-01 00:00:00',
    Col4 DATETIME DEFAULT NOW()
);

INSERT INTO MyTable16 (Col1) VALUES ('3000-03-03');
INSERT INTO MyTable16 (Col2) VALUES ('4000-04-04');
INSERT INTO MyTable16 (Col3) VALUES ('5000-05-05 05:05:05' );
INSERT INTO MyTable16 (Col4) VALUES ('6000-06-06 06:06:06');

SELECT * FROM MyTable16;

