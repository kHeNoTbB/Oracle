/*********************************************************************
Table of Record
  * PL/SQL Table 변수 선언과 비슷하며 데이터 타입을 %ROWTYPE으로 선언
  * PL/SQL Table과 레코드의 복합 기능을 함
  
TYPE example IS TABLE OF dept%ROWTYPE
INDEX BY BINARY_INTEGER;
dept_table dept_table_type;
*********************************************************************/

CREATE OR REPLACE PROCEDURE table_example
IS
  i BINARY_INTEGER := 0;
  
  TYPE dept_table_type IS TABLE OF dept%ROWTYPE
  INDEX BY BINARY_INTEGER;
  
  --dept_table_type
  dept_table dept_table_type;
BEGIN
  FOR dept_list
  IN (SELECT * FROM dept)
  LOOP
    i := i+1;
    
    dept_table(i).deptno := dept_list.deptno;
    dept_table(i).dname  := dept_list.dname;
    dept_table(i).loc    := dept_list.loc;
  END LOOP;
  
  FOR cnt IN 1..i LOOP
    DBMS_OUTPUT.PUT_LINE( '부서번호 : ' || dept_table(cnt).deptno || 
                          '부서명 : ' ||  dept_table(cnt).dname || 
                           '위치 : ' || dept_table(cnt).loc
                        );
  END LOOP;
END;
    

SET SERVEROUTPUT ON;
EXECUTE table_example;
