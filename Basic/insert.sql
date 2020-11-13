/**************************************************
[1] 기본형 명시적삽입
INSERT INTO 테이블명 (컬럼1, 컬럼2, 컬럼3......) 
VALUES (값1, 값2, 값3......)

[2] 기본형 묵시적 삽입
INSERT INTO 테이블명
VALUES (값1, 값2, 값3......)

[3] 조회 값 삽입
INSERT INTO 테이블명 (컬럼1, 컬럼2, 컬럼3......)
SELECT절
***************************************************/
-- [1]
INSERT INTO EMPLOY (ID, NAME, TEL)
VALUES ('12168', 'KIM', '010-1234-1111');


-- [2]
INSERT INTO EMPLOY
VALUES ('12168', 'KIM', '010-1234-1111');


-- [3]
INSERT INTO EMPLOY
SELECT ID, NAME, TEL FROM EMPLOY2 WHERE ID = '12168';
