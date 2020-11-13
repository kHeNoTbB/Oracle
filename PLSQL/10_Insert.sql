CREATE OR REPLACE PROCEDURE insert_example
  ( v_empno   IN  emp.empno%TYPE,
    v_ename   IN  emp.ename%TYPE,
    v_deptno  IN  emp.deptno%TYPE
  )
IS
BEGIN
  DBMS_OUTPUT.ENABLE;
  
  INSERT INTO emp(empno, ename, hiredate, deptno)
  VALUES(v_empno, v_ename, SYSDATE, v_deptno);
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || v_empno );
  DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || v_ename );
  DBMS_OUTPUT.PUT_LINE( '사원부서 : ' || v_deptno );
  DBMS_OUTPUT.PUT_LINE( '데이터 입력 성공 ' );
END;

SET SERVEROUTPUT ON;
EXECUTE insert_example(1000, 'tom', 20
