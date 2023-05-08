USE Board;

DESC Board;

SELECT * FROM Board 
WHERE id = 3713985;

CREATE TABLE FileName (
	id INT PRIMARY KEY AUTO_INCREMENT,
	boardId INT NOT NULL,
    fileName VARCHAR(300) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

SELECT * FROM FileName;

SELECT * FROM Board b JOIN FileName f
ON b.id = f.boardId  
WHERE b.id = 3713992;     -- 파일 있는 게시물
SELECT * FROM Board b JOIN FileName f
ON b.id = f.boardId  
WHERE b.id = 99;  -- 파일 없는 게시물, 아예 조회 안됨-> LEFT JOIN해야 함
SELECT * FROM Board b LEFT JOIN FileName f
ON b.id = f.boardId  
WHERE b.id = 3713397;  

SELECT * FROM Board;

SELECT * ,
	COUNT(f.id) 
FROM Board b LEFT JOIN FileName f ON b.id = f.boardId
GROUP BY b.id
ORDER BY b.id DESC
LIMIT 0, 5;

SELECT * FROM FileName
WHERE boardId = 3713984;
