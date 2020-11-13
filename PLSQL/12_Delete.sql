CREATE OR REPLACE PROCEDURE delete_example
  ( p_empno IN emp.empno%TYPE )
IS
  TYPE del_record IS RECORD
  ( v_empno    emp.empno%TYPE,
    v_ename    emp.ename%TYPE,
    v_hiredate emp.hiredate%TYPE
  );
BEGIN
  DBMS_OUTPUT.ENABLE;
  
  SELECT empno, ename, hiredate
  INTO v_emp.v_empno, v_emp.v_ename, v_emp.v_hiredate
  FROM emp
  WHERE empno = p_empno;
  
  DELETE
  FROM emp
  WHERE empno = p_empno;
  COMMIT;
END;


SET SERVEROUTPUT ON;
EXECUTE delete_example(7900);
