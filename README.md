# Oracle
Oracle + Oracle PL/SQL

## [PL/SQL](https://github.com/kHeNoTbB/Oracle/tree/main/PLSQL)
* SQL : 집합적 언어
* PL/SQL : 절차적 언어
  * Prodecural-SQL ; SQL을 이용해 집합적으로 데이터를 필요에 맞게 처리하며, 이렇게 처리한 SQL을 절차적으로 사용함
  * PL/SQL에서만 사용할 수 있는 코드와 문법이 존재하지만 데이터 처리 중심은 SQL에 있음
* Oracle's Prodedural Language extension to SQL
* Oracle 자체에 내장되어 있는 Procedure Language
* BLOCK 구조로 되어 있어, 다수의 SQL문을 한번에 Oracle DB로 보내서 처리하므로 처리수행속도 향상
* 자체 컴파일 엔진을 가짐
### 주요개념
#### 1. PL/SQL 기본구조
  * (1) [블록](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/01_Block_Structure.sql)
  * (2) [블록종류](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/02_Block_Type.sql)
#### 2. PL/SQL 구성요소
  * (1) 변수
  * (2) 상수
  * (3) 연산자
  * (4) 주석
  * (5) DML문
    * 5-1) [INSERT](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/10_Insert.sql)
    * 5-2) [UPDATE](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/11_Update.sql)
    * 5-3) [DELETE](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/12_Delete.sql)
#### 3. PL/SQL 제어문
  * (1) IF문
  * (2) CASE문
  * (3) LOOP문
  * (4) [FOR문](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/13_For_Loop.sql)
  * (5) GOTO문
  * (6) NULL문
#### 4. [함수](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/04_Function.sql)
#### 5. [프로시저](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/03_Procedure.sql)
  * (1) 프로시저 구성
  * (2) 매개변수
  * (3) RETURN
#### 6. 예외처리
#### 7. 트랜잭션
#### 8. 커서
  * (1) 묵시적 커서
  * (2) 명시적 커서
  * (3) [**커서와 FOR문**](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/%EB%AA%85%EC%8B%9C%EC%A0%81%EC%BB%A4%EC%84%9CFOR-LOOP.sql)
  * (4) 커서 변수
#### 9. 동적SQL
  * (1) [다이나믹 쿼리 활용과 회고](https://github.com/kHeNoTbB/Oracle/blob/main/PLSQL/%ED%94%84%EB%A1%9C%EC%8B%9C%EC%A0%80.md)
#### 10. 오라클 JOB과 스케쥴러
