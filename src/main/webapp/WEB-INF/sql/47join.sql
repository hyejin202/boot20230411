CREATE TABLE TableA(
	Numb1 INT
);
CREATE TABLE TableB(
	Numb2 INT
);
DESC TableA;
DESC TableB;

INSERT INTO TableA (numb1)
VALUES(1);
INSERT INTO TableA (numb1)
VALUES(2);
INSERT INTO TableA (numb1)
VALUES(3);
INSERT INTO TableA (numb1)
VALUES(4);
INSERT INTO TableA (numb1)
VALUES(5);

INSERT INTO TableB(Numb2)
VALUES (3) , (4), (5), (6), (7);


SELECT * FROM TableA; -- 1, 2, 3, 4, 5
SELECT * FROM TableB; -- 3, 4, 5, 6, 7

SELECT * FROM TableA Join TableB; --  cartesiana product
SELECT * FROM TableA a Join TableB b
ON a.Numb1 = b.Numb2; -- INNER JOIN
SELECT * FROM TableA a LEFT Join TableB b
ON a.Numb1 = b.Numb2; -- LEFT (OUTER) JOIN
SELECT * FROM TableA a RIGHT Join TableB b
ON a.Numb1 = b.Numb2; -- RIGHT (OUTER) JOIN