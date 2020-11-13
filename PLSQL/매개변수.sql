/********************************************************************************************************
IN  : 입력(디폴트)
      매개변수에 디폴트 값을 설정하면 프로시저 실행 시 해당 매개변수에 값을 넣지 않아도 된다.
OUT : 출력
      프로시저 내에서 로직 처리 후, 해당 매개변수에 값을 할당해 프로시저 호출 부분에서 이 값을 참조할 수 있음
*********************************************************************************************************/
CREATE OR REPLACE PROCEDURE DB스키마.프로시저이름(
  NAME      IN  VARCHAR2,
  ID        IN  VARCHAR2,
  USE       IN  VARCHAR2 := 'Y',
  PASSWORD  IN  VARCHAR2,
  RETURN_O  OUT VARCHAR2
)
IS
  COUNT_V   NUMBER;
  RETURN_V  VARCHAR2(100);
BEGIN
  COUNT_V  := 0;
  RETURN_V := null;
  
  SELECT COUNT(EMP_ID)
  INTO COUNT_V
  FROM EMPLOY
  WHERE EMP_ID = ID;
  
  IF    COUNT_V < 1
  THEN  RETURN_V := 'Inexistent';
  ELSE
        IF    USE = 'N'
        THEN  
              BEGIN
                    UPDATE ____________;
                    COMMIT;
                    RETURN_V := '_____';
                    
                    EXCEPTION WHEN OTHERS THEN ___
                    ROLLBACK;
               END; --BEGIN END
         END IF;
   END IF;
   RETURN_O := RETURN_V;
END;
