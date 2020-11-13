/*********************************************************
해당 조건에 맞게 쿼리를 수정할 수 있다.
이후 QUERY는 EXECUTE IMMEDIATE QUERY를 사용해 동작하면 된다.
**********************************************************/
DECLARE
  CURSOR ACPTCUR IS
    SELECT * FROM ACCEPT WHERE CUST_NO = '_______';
  QUERY VARCHAR2(2000);
BEGIN
  FOR TARGET IN ACPTCUR
  LOOP
    IF TARGET.STORE_CD = '_____' THEN
      QUERY := QUERY || '_______';
    END IF;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(QUERY);
END;
