/******************************************************************************
For-loop
  * index는 자동 선언되는 binary_integer형 변수이며 1씩 증가
  * reverse 옵션이 사용될 경우 index는 upper_bound에서 lower_bound로 1씩 감소
  * IN 다음에는 커서(cursor)나 조회(select)문이 올 수 있음

FOR index IN [REVERSE] 시작값..끝값 LOOP
  [statement 1]
  [statement 2]
END LOOP;
*******************************************************************************/

DECLARE
  TYPE ename_table IS TABLE OF emp.ename%TYPE
  INDEX BY BINARY_INTEGER;
  
  TYPE sal_table IS TABLE OF emp.sal%TYPE
  INDEX BY BINARY_INTEGER;
  
  ename_tab ename_table;
  sal_tab   sal_table;
  
  i BINARY_INTEGER := 0;
  
BIGIN
  DBMS_OUTPUT.ENABLE;
  FOR emp_list IN ( SELECT ename, sal
                    FROM emp
                    WHERE deptno = 10 
                   )
  LOOP
        i := i + 1;
        ename_tab(i) := emp_list.ename;
        sal_tab(i)   := emp_list.sql;
   END LOOP;
   
   FOR cnt IN  1..i
   LOOP  
        DBMS_OUTPUT.PUT_LINE('사원이름 : ' || ename_tab(cnt)); 
        DBMS_OUTPUT.PUT_LINE('사원급여 : ' || sal_tab(cnt));
   END LOOP;
END;
   
