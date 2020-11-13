/**********************************************************
SELECT INTO 문은
한 테이블에서 새로운 테이블로 정보를 복사할 때 사용된다.
따라서 DECLARE에 변수를 설정하고나서,
SELECT문의 결과를 변수에 복사하여 사용할 수 있다.
***********************************************************/
DECLARE
  NEW_ACPT_NO   VARCHAR(15);
  NEW_CUST_NO   VARCHAR(15);
BEGIN
  SELECT ACPT_NO, CUST_NO
  INTO NEW_ACPT_NO, NEW_CUST_NO
  FROM ACCEPT
  WHERE ACPT_NO = '_______';
  DBMS_OUTPUT.PUT_LINE(NEW_ACPT_NO || ' ' || NEW_CUST_NO);
END;
