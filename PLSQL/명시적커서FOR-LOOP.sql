/************************************************************************
CURSOR FOR-LOOP는 내부적으로 처리되는 데이터의 양,
I/O측면에서 훨씬 효율적이기 때문에 가급적으로 이를 사용하는 것이 좋음
**************************************************************************/

CREATE OR REPLACE PROCEDURE DB스키마.프로시저이름

BEGIN
      FOR ID_LIST IN
          ( SELECT USER_ID FROM _____)
      LOOP
            DBMS_PUTPUT.PUTLINE(ID_LIST.USER_ID);
      END_LOOP;
END 프로시저이름;
