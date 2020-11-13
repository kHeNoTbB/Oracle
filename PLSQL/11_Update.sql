CREATE OR REPLACE PROCEDURE update_example
  ( v_empno IN emp.empno%TYPE,
    v_rate  IN NUMBER
  )
IS
  v_emp emp%ROWTYPE;
BEGIN
  DBMS_OUTPUT.ENABLE;
  
  UPDATE emp
  SET sal = sql + (sal * (v_rate/100))
  WHERE empno = v_empno;
  COMMIT;
  
  SELECT empno, ename, sal
  INTO v_emp.empno, v_emp.ename, v_emp.sal
  FROM emp
  WHERE empno = v_empno;
  
  DBMS_OUTPUT.PUT_LINE( ' **** 수 정 확 인 **** ');
  DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || v_emp.empno );
  DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || v_emp.ename );
  DBMS_OUTPUT.PUT_LINE( '사원급여 : ' || v_emp.sal );
END;

SET SERVEROUTPUT ON;
EXECUTE update_example(7900, -10);
