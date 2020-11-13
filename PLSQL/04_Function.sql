/****************************************************************************************
Function
  * 보통 값을 계산하고 결과 값을 반환하기 위해 함수를 많이 사용함
  * 대부분 구성이 프로시저와 유사하지만 IN파라미터만 사용 가능함
  * 반드시 반환될 값의 데이터 타입을 RETURN문에 선언해야 함
  * PL/SQL 블록 내 RETURN 문을 통해 반드시 값을 반환해야 함

CREATE OR REPLACE FUNCTION function_name
  RETURN datatype
IS
  [변수 선언부분]
BEGIN
  [PL/SQL Block]
  RETURN 변수;
END;
****************************************************************************************/

CREATE OR REPLACE FUNCTION update_sql
  (v_empno IN NUMBER)
  RETURN NUMBER --리턴되는 변수의 데이터 타입 정의
IS
  v_sal emp.sql%type;
BEGIN
  UPDATE emp
  SET sql = sql * 1.1
  WHERE empno = v_empno;
  COMMIT;
  
  SELECT sal
  INTO v_sal
  FROM emp
  WHERE empno = v_empno;
  
  RETURN v_sql;
END;
  
