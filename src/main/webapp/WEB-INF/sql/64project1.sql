USE Board;

SELECT * FROM Member;
SELECT * FROM Board;

ALTER TABLE Board 
ADD FOREIGN KEY (writer) REFERENCES Member (id);

UPDATE Board
SET writer = 'user1';

CREATE TABLE MemberAuthority(
	memberId VARCHAR(20) NOT NULL,
    authority VARCHAR(30) NOT NULL,
    FOREIGN KEY (memberId) REFERENCES Member (id),
    PRIMARY KEY (memberId, authority)
);

INSERT INTO MemberAuthority 
VALUES('admin0', 'admin');

SELECT * FROM Member m LEFT JOIN MemberAuthority ma
ON m.id = ma.memberId
WHERE m.id = 'admin0';

DESC MemberAuthority;
SELECT * FROM MemberAuthority;



