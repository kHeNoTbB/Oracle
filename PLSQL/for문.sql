CREATE OR REPLACE PROCEDURE DB스키마이름.프로시저이름 IS
/*******************************************************
  NAME: 프로시저이름
  PURPOSE : 프로시저목적
*********************************************************/

s_err_msg   VARCHAR2 (400);
query       VARCHAR2 (2000);

BEGIN
  FOR 이름 IN(
    SELECT *
    FROM _______
  )
  LOOP
    내용
  END LOOP;
  
  COMMIT;

EXCEPTION
  WHEN OTHERS
  THEN
    ROLLBACK;
    
    S_ERR_MSG := '';
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('');
END;
