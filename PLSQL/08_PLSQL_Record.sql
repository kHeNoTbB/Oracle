/**********************************************************************************
PL/SQL 레코드
  * 여러개의 데이터 타입을 갖는 변수들의 집합
  * 스칼라, 레코드, 또는 PL/SQL 테이블 데이터타입 중 하나 이상의 요소로 구성됨
  * 논리적 단위로서 필드 집합을 처리할 수 있도록 함
  * PL/SQL 테이블과 다르게, 개별 필드의 이름을 부여할 수 있고 선언 시 초기화 가능

TYPE record_example IS RECORD
  ( record_empno  NUMBER,
    record_ename  VARCHAR2(30),
    record_sal    NUMBER
  );
**********************************************************************************/

CREATE OR REPLACE PROCEDURE record_example
 ( p_empno IN emp.empno%TYPE )
IS
 TYPE emp_record IS RECORD
 ( v_empno    NUMBER,
   v_ename    VARCHAR2(30),
   v_hiredate DATE
 );
 
 -- emp_record라는 record 타입으로 emp_rec 변수를 선언하여 사용
 emp_rec emp_record;
BEGIN
 DBMS_OUTPUT.ENABLE;
 
 SELECT empno, ename, hiredate
 INTO emp_rec.v_empno, emp_rec.v_ename, emp_rec.v_hiredate
 FROM emp
 WHERE eMpno = p_empno;
 
 DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || emp_rec.v_empno );
 DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || emp_rec.v_ename );
 DBMS_OUTPUT.PUT_LINE( '입 사 일 : ' || emp_rec.v_hiredate);
END;


SET SERVEROUTPUT ON;
EXECUTE record_example(7369);
 
