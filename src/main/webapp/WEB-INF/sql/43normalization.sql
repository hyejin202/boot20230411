USE w3schools;

-- normalization 정규화

-- 1NF(first noraml form) (215p)
-- 규칙1) 열을 원자적 값만을 포함한다.
-- 규칙2) 같은 데이터가 여러 열에 반복되지 말아야 한다.
-- 규칙3) 각 행은 유일무이한 식별자인 기본키를 가지고 있어야 한다.

-- 책 216p~217p
-- *기본키 : 각 레코드를 다른 레코드와 구분하는 열 
-- 1) 기본키는  NULL이 될수 없음
-- 2) 기본키는 레코드가 삽입될때 있어야 함.
-- 3) 기본키는 간결해야 함
-- 4) 기본키의 값은 변경 불가함
-- > 기본키를 위한 열을 새로 만들기

  

-- 예제) 학생이름, 전화번호
CREATE TABLE Student (
	Id  INT PRIMARY KEY AUTO_INCREMENT, -- 인위적 키 컬럼
	Name VARCHAR(20),
    Phone VARCHAR(11)
);

CREATE TABLE StudentPhone (
	Id INT PRIMARY KEY AUTO_INCREMENT,
    StudentId INT,
	Phone VARCHAR(50)
);

-- 예제 ) 교재정보를 저장할 테이블 작성
CREATE TABLE Book (
	BookId INT PRIMARY KEY AUTO_INCREMENT,
	Title VARCHAR(50),
    Writer VARCHAR(20),
    Price INT,
    Publisher VARCHAR(20)
);

-- 2NF(second normal form)
-- 책 369p
-- 규칙1) 1NF여야 한다.
-- 규칙2) 부분적 함수 의존이 없다.

-- 3NF (third normal form) 제 3형 정규화
-- 책 374p
-- 규칙1) 2NF입니다.
--  규칙2) 이행적 종속이 없습니다.






















