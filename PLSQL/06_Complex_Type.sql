/***************************************************************************
복합 데이터 타입
  * 하나이상의 데이터 값을 갖는 데이터 타입
  * 배열과 비슷한 역할을 하며, 재사용 가능

%ROWTYPE
  * 테이블이나 뷰 내부의 컬럼 데이터 형, 크기, 속성등을 그대로 사용가능
  * %ROWTYPE 앞에 테이블 명이 옴
  * 지정된 테이블 구조와 동일한 구조를 갖는 변수 선언 가능
  * 데이터베이스 컬럼들의 수나 데이터 타입을 모를 때 편리함
  * 테이블의 컬럼의 데이터 타입이 변경될 경우 프로그램을 재수정할 필요가 없음
***************************************************************************/

CREATE OR REPLACE PROCEDURE rowtype_example
  (p_empno  IN emp.empno%TYPE)
IS
  v_emp emp%ROWTYPE;
BEGIN
  DBMS_OUTPUT.ENABLE;
  
  SELECT empno, ename, hiredate
  INTO v_emp.empno, v_emp.ename, v_emp.hiredate
  FROM emp
  WHERE empno = p_empno;
  
  DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || v_emp.empno );
  DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || v_emp.ename );
  DBMS_OUTPUT.PUT_LINE( '입 사 일 : ' || v_emp.hiredate );
END;

SET SERVEROUTPUT ON;
EXECUTE rowtype_example(7900);
