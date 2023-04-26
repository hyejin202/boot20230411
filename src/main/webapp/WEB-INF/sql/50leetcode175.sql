CREATE DATABASE leetcode175;
USE leetcode175;

CREATE TABLE Person(
	PersonId INT PRIMARY KEY,
    lastName VARCHAR (200),
    firstName VARCHAR(200)
);
INSERT INTO Person VALUES(1, 'Wang', 'Allen'), (2, 'Alice', 'Bob');

SELECT * FROM Person;

CREATE TABLE Address(
	addressId INT PRIMARY KEY,
    PersonId INT,
    city VARCHAR(200),
    state VARCHAR(200)
);
INSERT INTO Address VALUES (1, 2, 'New York City', 'New York');
INSERT INTO Address VALUES (2, 3, 'Leetcode', 'Califonia');

SELECT * FROM Address;

-- 문제) firstName, lastName, city, state를 조회
-- 하는 쿼리 작성, 주소가 없으면 null로
SELECT p.firstName, p.lastName, ad.city, ad.state
FROM Person p LEFT JOIN Address ad 
ON p.PersonId = ad.PersonId;

-- 서브쿼리로
SELECT  firstName, 
				lastName,
                (SELECT city
				FROM Address 
				WHERE personId = p.personId) city,
				(SELECT state
				FROM Address 
				WHERE personId = p.personId) state
FROM Person p;
