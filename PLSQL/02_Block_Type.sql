/*************************************************************************************************************************
(1) Anonymous Block   - 이름이 없는 블록으로, 실행하기 위해 프로그램 안에서 선언되고 실행 시, PL/SQL 엔진으로 전달됨
(2) Procedure         - 특정 작업을 수행할 수 있는 이름이 있는 PL/SQL 블록으로, 매개변수를 받을 수 있고 반복 사용 가능함
(3) Function          - 값 계산 후 결과 값을 반환하기 위해 사용
**************************************************************************************************************************/

-- (1) Anonymous Block
BEGIN
      --statements
EXCEPTION
END;


-- (2) Procedure
PROCEDURE name IS
BEGIN
      --statements
EXCEPTION
END;


-- (3) Function
FUNCTION nAme
RETURN datatype
IS
BEGIN
      --statements
RETURN value;
EXCEPTION
END;
