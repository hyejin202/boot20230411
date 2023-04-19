USE w3schools;

-- transaction : 하나의 업무 단위

-- 하나의 트랜잭션 여러 insert, update, delete
-- 명령문으로 구성될 수 있다.

-- 예 ) 이체 (A -> B) 5000원
-- A의 돈은 -5000원 update
-- B의 돈은 +5000원 update

CREATE TABLE Bank (
	customerName VARCHAR(255),
    money int default 0
);
SELECT * FROM Bank;
    
INSERT INTO Bank VALUES('A', 100000);
INSERT INTO Bank VALUES('B', 100000);
    
-- 이체 5000원 (A->B)
UPDATE Bank SET money = money - 5000
WHERE customerName = 'A';
UPDATE Bank SET money = money + 5000
WHERE customerName = 'B';
    
SELECT * FROM Bank;

-- commit : 트랜잭션 완료
-- rollback : 트랜잭션 실패(트랜잭션 시작 이전으로 되돌리기)

-- 자동 커밋(autocommit)    
SET autocommit = 0;  -- 자동커밋 비활성화 (disable) 
SET autocommit = 1; -- 자동커밋 활성화 (enable)   

UPDATE Bank SET money = money - 5000 WHERE customerName = 'A';
UPDATE Bank SET money = money + 5000 WHERE customerName = 'B';

SELECT * FROM Bank;

ROLLBACK;  -- 마지막 커밋으로 되돌리기
COMMIT; --  트랜잭션 완료

-- 이체시 오류 (A -> B 5000원) 
UPDATE Bank SET money = money - 5000
WHERE customerName = 'A';
-- 오류 생겼다고 가정
SELECT * FROM Bank;
ROLLBACK;

    
    
    
    
    