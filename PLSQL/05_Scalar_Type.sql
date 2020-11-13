/*****************************************************************************************
스칼라 데이터 타입
  (1) 일반 단일 데이터타입의 변수
  (2) %TYPE 데이터형 변수

일반변수
  * 변수를 상수로 지정하고 싶은 경우는 CONSTANT라는 키워드를 명시하고 반드시 초기값을 할당
  * NOT NULL이 정의되어 있으면 초기값을 반드시 지정하고, 정의돼 있지 않다면 생략 가능
  * 초기값은 할당 연산자(:=)를 사용하여 정의
  * 초기값을 정의하지 않은 변수는 NULL값을 가짐
  * 일반적으로 한 줄에 한 개의 변수를 정의

%TYPE 데이터형
  * 기술한 DB 테이블 컬럼 데이터 타입을 모를 경우 사용할 수 있고, 
    이후 컬럼 데이터 타입이 변경될 경우에도 따로 수정할 필요가 없음
  * 이미 선언된 다른 변수나 DB 컬럼의 데이터 타입을 이용하여 선언
  * DB 테이블과 컬럼, 그리고 이미 선언한 변수명이 %TYPE 앞에 올 수 있음
*****************************************************************************************/

-- (1) 일반변수
v_price     CONSTANT NUMBER(4,2) := 12.34;
v_name      VARCHAR(20);
v_bir_type  CHAR(1);
v_flag      BOOLEAN NOT NULL := TRUE;
v_birthday  DATE;


-- (2) %TYPE형 변수
CREATE OR REPLACE PROCEDURE emp_info
  (p_empno IN emp.empno%TYPE)
IS
  v_empno emp.empno%TYPE;
  v_ename emp.ename%TYPE;
  v_sal   emp.sal&TYPE;
BEGIN
  SELECT empno, ename, sal
  INTO v_empno, v_ename, v_sal
  FROM emp
  WHERE empno = p_empno;
  
  DBMS_OUTPUT.PUT_LINE( '사원번호 : ' || v_empno ); 
  DBMS_OUTPUT.PUT_LINE( '사원이름 : ' || v_ename );
  DBMS_OUTPUT.PUT_LINE( '사원급여 : ' || v_sal );
END;


SET SERVEROUTPUT ON; --DBMS_OUTPUT 결과 값을 화면에 출력하기 위함
EXECUTE emp_info(7369); --실행
