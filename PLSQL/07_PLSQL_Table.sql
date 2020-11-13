/******************************************************************
PL/SQL 테이블
  * 일종의 배열이라고 생각하면 이해하기 쉬움
  * 테이블 크기에 제한이 없으며, 행의 크기는 데이터가 들어옴에 따라 자동 증가함
  * Binary_integer 타입의 인덱스 번호가 순서대로 정해짐
  * 하나의 테이블에 한 개의 컬럼 데이터를 저장함


TYPE prdname_table IS TABLE OF varchar2(30)
INDEX BY BINARY_INTEGER;

prdname_tab prdname_table

******************************************************************/

CREATE OR REPLACE PROCEDURE table_example
  (v_deptno IN emp.deptno%TYPE)
IS
  TYPE empno_table IS TABLE OF emp.empno%TYPE
  INDEX BY BINARY_INTEGER;
  
  TYPE ename_table IS TABLE OF emp.ename%TYPE
  INDEX BY BINARY_INTEER;
  
  TYPE sal_table IS TABLE OF emp.sal%TYPE
  INDEX BY BINARY_INTEGER;
  
  --테이블 타입으로 변수를 선언해서 사용함
  empno_tab empno_table;
  ename_tab ename_table;
  sal_tab   sal_table;
  
  i BINARY_INTEER := 0;

BEGIN
  DBMS_OUTPUT.ENABLE;
  
  FOR emp_list IN(SELECT empno
                         , ename
                         , sal
                  FROM emp
                  WHERE deptno = v_deptno)
  LOOP 
        i := i+1;
        empno_tab(i) := emp_list.empno;
        ename_tab(i) := emp_list.ename;
        sal_tab(i)   := emp_list.sal;
  END LOOP;
  
  -- 1부터 i까지 for문 실행
  FOR cnt IN 1..i LOOP
    DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || empno_tab(cnt) );
    DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || ename_tab(cnt) );
    DBMS_OUTPUT.PUT_LINE( '사원급여 : ' || sal_tab(cnt));
  END LOOP;
  
END;


SET SERVEROUTPUT ON;
EXECUTE table_example(10);

