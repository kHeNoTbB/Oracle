/**********************************************************************
# 커서(CURSOR)와 FOR문

(1) 기본적인 FOR문
***********************************************************************/
BEGIN
  FOR i in 1..9
  LOOP
    DBMS_OUTPUT.PUT_LINE(i);
  END LOOP;
END;


/**********************************************************************
(2) 커서와 함께 사용하는 FOR문
***********************************************************************/
