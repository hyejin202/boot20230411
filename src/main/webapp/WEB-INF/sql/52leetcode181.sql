CREATE DATABASE leetcode181;
USE leetcode181;

CREATE TABLE Employee (
	id INT PRIMARY KEY,
    name VARCHAR(200),
    salary INT,
    managerId INT
);

INSERT INTO Employee VALUES (1, 'Joe', 70000, 3); 
INSERT INTO Employee VALUES (2, 'Henry', 80000, 4);
INSERT INTO Employee VALUES (3, 'Sam', 60000, Null);
INSERT INTO Employee VALUES (4, 'Max', 90000, Null);

SELECT * FROM Employee;

-- 문제) 자기 매니저보다 많은 급여를 받는 직원 이름 조회 
SELECT e1.name Employee
FROM Employee AS e1 JOIN Employee AS e2
ON e1.managerId = e2.Id
WHERE e1.salary > e2.salary;

-- 다른 방법) 서브쿼리
SELECT name FROM Employee e1
WHERE salary > (SELECT salary
							FROM Employee e2
                            WHERE e2.id = e1.managerId);