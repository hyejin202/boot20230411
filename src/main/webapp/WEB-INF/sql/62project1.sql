USE Board;

-- 회원정보
CREATE TABLE Member (
		id VARCHAR(20) PRIMARY KEY,
		password VARCHAR(100) NOT NULL,
        nickName VARCHAR(20) NOT NULL UNIQUE,
        email VARCHAR(100) UNIQUE,
        inserted DATETIME DEFAULT Now()
);
DESC Member;
SELECT * FROM Member;