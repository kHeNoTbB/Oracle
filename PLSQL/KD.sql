# 프로시저
친구가 자기가 만든 프로시저가 동작이 안된다며 코드를 들고왔다.

INSERT .. VALUES(...)
  SELECT ...

1. 위 프로시저 DML에서 GROUP BY 에러가 발생함. 따라서 우선 FOR-LOOP로 구문변경함
2. 변경 후, 컴파일 에러 없이 동작하나 INSERT가 되지 않음
   → 💡 경험상, 보통 SELECT문에서 AS(alias) 사용 시에는 서브쿼리 내에서만 사용하고, 바깥에서는 AS 처리된 컬럼명만 작성했었음 
3. SELECT문을 FROM절 서브쿼리 안으로 넣어 해결됨


## 회고
1. 당연하게도 단일 SELECT문에서 GROUP BY했을 시, GROUP BY한 컬럼만 조회되므로, INSERT는 해당 컬럼만 가능함.
2. 그런데도 INSERT 안되는 문제 발생
   try - #1 FOR-LOOP 앞 뒤로 DBMS_OUTPUT.PUT_LINE으로 동작하는지 봄 → 동작은 하지만 여전히 INSERT 되지 않음
         #2 LOOP 뒤 DML 문장(INSERT) 내에서 컬럼을 DBMS_OUTPUT.PUT_LINE로 찍어봄 → 찍히지 않으므로 FOR(SELECT절) 이상임을 확인
         #3 AS 키워드 없이 작성해봄 ex) 컬럼1 AS 컬럼2 => 컬럼1 컬럼2 → 여전히 해결되지 않음
         #4 SELECT문을 FROM절 서브쿼리 안으로 넣음 → 해결됨
3. 4트만에 해결됐지만 왜 해결됐는지에 대한 리서치 필요함
  * 근데 뭐 생각해보니까 PS자체가 절차적인 언어인데, 애초에 FOR-LOOP를 안써서 구현하는 건 잘 활용한건 아닌 것 같음
