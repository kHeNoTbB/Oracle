# 오라클 Job

### 프로시저 구성

1. SUBMIT : DB에 새로운 JOB을 추가하는 프로시저
2. REMOVE : DB에 추가된 JOB을 삭제하는 프로시저 
3. CHANGE : DB에 저장되어 있는 JOB의 field들을 변경하는 프로시저
4. WHAT : JOB이 수행하는 작업을 변경하는 프로시저
5. NEXT_DATE : JOB이 Schedule되어 Timer에 의해 자동으로 실행될 때를 변경하는 프로시저
6. INTERVAL : JOB 실행 주기 파라미터를 변경하는프로시저
7. BROKEN  : DB에 저장되어 있는 JOB의 상태를 정상 or Broken 상태로 설정하는 프로시저
8. RUN : JOB을 현재 시점에서 즉시 수행시키는 프로시저

```
BEGIN(
 ...
)	
END;
COMMIT;
```





***

### 내용

* job : job 번호로 다른 프로시저에서 호출될 수 있음
* what : 수행할 pl/sql or procedure or package 이름을 지정, 직접 수행하기를 원하는 sql문 적어도 됨
* next_date : 다음에 수행될 시간을 지정
* interval : 수행되는 주기를 지정, 초단위까지 지정가능
  * 10분 간격 : sysdate + 10/1440
  * 1시간 간격 : sysdate + 60/1440
  * 매일 오전 7시 : trunc(sysdate) + 1 + 7/24 ( 매일이므로 정해진 시간에 속함 )
* instance : 작업이 제출되어 졌을때, 어떤 instance 가 작업을 실행할지 지정합니다
* force : TRUE인 경우 모든 양의 정수는 작업 인스턴스로 허용됩니다. 이 값이 FALSE이면(FASE가 기본값 입니다.) 지정된 인스턴스가 실행되고 있어야 합니다. 그렇지 않으면 예외가 발생합니다.



***

### 예시

```
BEGIN
	DBMS_JOB.CHANGE (
	  job => 1,
	  what => ~~~,
	  next_date => ~~~,
	  interval => ~~~,
	  instance => 0,
	  force => FALSE
	);
END;
COMMIT;
```





### PROCEDURE WITH ORANGE

PL/SQL 내 프로시저 작성 후 컴파일(F5) > SUCCESSFUL 뜨면 끝

*FOR LOOP 작성 공부 필요할 듯*



### JOB WITH ORANGE

JOB > 스키마 선택 > SUBMIT JOB >

WHAT ? OBJECT NAME = 프로시저 이름

NEXT DATE ? SYSDATE

INTERVAL - Expression = TRUNC(SYSDATE,'MI') + 1/144  //매일 10분간격 (EVERY DAY 10 MIN)
