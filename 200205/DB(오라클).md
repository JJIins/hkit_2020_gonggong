* IN, ANY, ALL
```
비교 연산자는 연속된 범위값 또는 하나의 값을 판단하는 반면, 
얘네들은 구멍이 쏭쏭 뚫린 뛰엄 뛰엄 값들을 판단함.

IN과 ANY
IN이 점's이라면,  
ANY는 범위's임.

ALL
IN과 ANY가 OR이라면, 
ALL은 AND임.
```

### 연습문제

* 01. 사원번호가 7788인 사원과 담당업무가 같은 사원을 표시(사원이름과 담당 업무)하시오.
```console
ENAME                JOB
-------------------- ------------------
SCOTT                ANALYST
FORD                 ANALYST
```

* 02. 사원번호가 7499인 사원보다 급여가 많은 사원을 표시(사원이름과 담당 업무)하시오.
```console
ENAME                JOB
-------------------- ------------------
JONES                MANAGER
BLAKE                MANAGER
CLARK                MANAGER
SCOTT                ANALYST
KING                 PRESIDENT
FORD                 ANALYST

6 rows selected.
```

* 03. 최소 급여를 받는 사원의 이름, 담당 업무 및 급여를 표시하시오(그룹함수 사용).
```console
ENAME                JOB                    SALARY
-------------------- ------------------ ----------
SMITH                CLERK                     800
```

<!--
* 4. 평균 급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균 급여를 표시하시오.
```console
JOB                ROUND(AVG(SALARY),1)
------------------ --------------------
CLERK                            1037.5
```
-->

* 5. 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표시하시오.
```console
ENAME                    SALARY        DNO
-------------------- ---------- ----------
SMITH                       800         20
JAMES                       950         30
MILLER                     1300         10
```

* 6. 담당 업무가 분석가(ANALYST)인 사원보다 급여가 적으면서 업무가 분석가(ANALYST)가 아닌 사원들을 표시(사원번호, 이름, 담당 업무, 급여)하시오.
```console
       ENO ENAME                JOB                    SALARY
---------- -------------------- ------------------ ----------
      7369 SMITH                CLERK                     800
      7900 JAMES                CLERK                     950
      7876 ADAMS                CLERK                    1100
      7521 WARD                 SALESMAN                 1250
      7654 MARTIN               SALESMAN                 1250
      7934 MILLER               CLERK                    1300
      7844 TURNER               SALESMAN                 1500
      7499 ALLEN                SALESMAN                 1600
      7782 CLARK                MANAGER                  2450
      7698 BLAKE                MANAGER                  2850
      7566 JONES                MANAGER                  2975

11 rows selected.
```

* 7. 부하직원이 없는 사원의 이름을 표시하시오.
```console
ENAME
--------------------
KING
```

* 8. 부하직원이 있는 사원의 이름을 표시하시오.
```console
ENAME
--------------------
SMITH
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
SCOTT
TURNER
ADAMS
JAMES

ENAME
--------------------
FORD
MILLER

13 rows selected.
```

* 9. BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하시오.(단, BLAKE는 제외)
```console
ENAME                HIREDATE
-------------------- --------
ALLEN                81/02/20
WARD                 81/02/22
MARTIN               81/09/28
TURNER               81/09/08
JAMES                81/12/03
```

<!--
* 10. 급여가 평균 급여 보다 많은 사원들의 사원번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬 하시오.
```console
       ENO ENAME
---------- --------------------
      7782 CLARK
      7698 BLAKE
      7566 JONES
      7902 FORD
      7788 SCOTT
      7839 KING

6 rows selected.
```

* 11. 이름에 K가 포함된 사원과 같은 부서에서 일하는 사원의 사원번호와 이름을 표시하는 질의를 작성하시오.
```console
       ENO ENAME
---------- --------------------
      7900 JAMES
      7844 TURNER
      7698 BLAKE
      7654 MARTIN
      7521 WARD
      7499 ALLEN
      7934 MILLER
      7839 KING
      7782 CLARK

9 rows selected.
```
-->

* 12. 부서 위치가 DALLAS인 사원의 이름과 부서번호 및 담당 업무를 표시하시오.
```console
ENAME                       DNO JOB
-------------------- ---------- ------------------
SMITH                        20 CLERK
JONES                        20 MANAGER
SCOTT                        20 ANALYST
ADAMS                        20 CLERK
FORD                         20 ANALYST
```

* 13. KING에게 보고하는 사원의 이름과 급여를 표시하시오.
```console
ENAME                    SALARY
-------------------- ----------
JONES                      2975
BLAKE                      2850
CLARK                      2450
```

* 14. RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당업무를 표시하시오.
```console
       DNO ENAME                JOB
---------- -------------------- ------------------
        20 SMITH                CLERK
        20 JONES                MANAGER
        20 SCOTT                ANALYST
        20 ADAMS                CLERK
        20 FORD                 ANALYST
```

<!--
* 15. 평균 급여 보다 많은 급여를 받고 이름에 M이 포함된 사원과 같은 부서에서 근무하는 사원의 사원번호, 이름, 급여를 표시하시오.
```console
       ENO ENAME                    SALARY
---------- -------------------- ----------
      7902 FORD                       3000
      7788 SCOTT                      3000
      7566 JONES                      2975
      7698 BLAKE                      2850
      7839 KING                       5000
      7782 CLARK                      2450

6 rows selected.
```
-->

<!--
* 16. 평균 급여가 가장 적은 업무를 찾으시오.
```console
JOB                AVG(SALARY)
------------------ -----------
CLERK                   1037.5
```
-->

* 16. 담당 업무가 MANAGER인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오.
```console
ENAME
--------------------
JONES
BLAKE
CLARK
SCOTT
KING
FORD

6 rows selected.
```
