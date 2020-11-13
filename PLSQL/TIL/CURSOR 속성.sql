/*****************************************************************************************************************************************
# CURSOR
SQL 커서는 Oracle 서버에서 할당한 전용 메모리 영역에 대한 포인터이다.
즉, 질의의 결과로 얻어진 여러 행이 저장된 메모리상의 위치로, SELECT 문의 결과 집합을 처리하는데 사용된다.

암시적 커서 속성
1) SQL%ROWCOUNT   Number      : 해당 SQL문에 의해 반환된 총 행수, 가장 최근 수행된 SQL문에 의해 영향을 받은 행의 갯수(정수)
2) SQL%FOUND      Boolean     : 해당 SQL문에 의해 반환된 총 행수가 1개 이상일 경우TRUE (BOOLEAN)
3) SQL%NOTFOUND   Boolean     : 해당 SQL문에 의해 반환된 총 행수가 없을 경우 TRUE (BOOLEAN)
4) SQL%ISOPEN     Boolean     : 항상 FALSE, 암시적 커서가 열려 있는지의 여부 검색(PL/SQL은 실행 후 바로 묵시적 커서를 닫기 때문에 항상 false)

명시적 커서 속성
1) %ROWCOUNT      Number      : 현재까지 반환된 모든 행의 수를 출력
2) %FOUND         Boolean     : Fetch한 데이터가 행을 반환하면 TRUE
3) %NOTFOUND      Boolean     : Fetch한 데이터가 행을 반환하지 않으면 TRUE (LOOP를 종료할 시점을 찾는다)
3) %ISOPEN        Boolean     : 커서가 open 되어 있으면 TRUE
*******************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE DB스키마.프로시저이름
IS
                  ID_V    VARCHAR2(5);
                  
CURSOR 커서이름 IS
                  SELECT *
                  FROM _________
                  WHERE ________

cVAL 커서이름%ROWTYPE; --명시적 커서속성의 1) ROWCOUNT 

BEGIN
      OPEN 커서이름;
      LOOP
            FETCH 커서이름 INTO cVAL;
            EXIT WHEN 커서이름%NOTFOUND;
            
            SELECT *
            FROM _______
            WHERE NAME = cVAL.NAME;
       END LOOP;
       COMMIT;
END 프로시저이름;
            
