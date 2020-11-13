/********************************************************************************************************
Procedure
  * 특정 작업을 수행하는, 이름이 있는 PL/SQL Block
  * 매개변수를 받을 수 있고, 반복적으로 사용할 수 있음
  * 보통 연속 실행 또는 구현이 복잡한 트랜잭션을 수행하는 PL/SQL Block을 DB에 저장하기 위해 생성


-- 프로시저 생성
CREATE OR REPLACE prodecure_name
  IN argument
  OUT argument
  IN OUT argument

-- PL/SQL Block 시작
IS
  [지역변수 선언]
BEGIN
  [PL/SQL Block]
  --SQL문장, PL/SQL제어 문장
  
  EXCEPTION
  --error가 발생할 때 수행하는 문장
END;
*********************************************************************************************************/

CREATE OR REPLACE PROCEDURE update_sql
  (v_empo IN NUMBER)
IS
BEGIN
  UPDATE emp
  SET sal = sal * 1.1
  WHERE empno = v_empno;
  COMMIT;
END update_sql;
