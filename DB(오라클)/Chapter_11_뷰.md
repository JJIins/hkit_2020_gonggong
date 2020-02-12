## Chapter 11_뷰

### 연습문제

* 1.20번 부서에 소속된 사원의 사원번호와 이름과 부서번호를 출력하는 SELECT문을 하나의 뷰(v_em_dno)
로 정의하시오.
```console
SQL> select * from v_em_dno;

       ENO ENAME                       DNO
---------- -------------------- ----------
      7369 SMITH                        20
      7566 JONES                        20
      7788 SCOTT                        20
      7876 ADAMS                        20
      7902 FORD                         20
```

* 2.이미 생성된 뷰(v_em_dno)에 대해서 급여 역시 출력할 수 있도록 수정하시오.
```console
SQL> select * from v_em_dno;

       ENO ENAME                       DNO     SALARY
---------- -------------------- ---------- ----------
      7369 SMITH                        20        800
      7566 JONES                        20       2975
      7788 SCOTT                        20       3000
      7876 ADAMS                        20       1100
      7902 FORD                         20       3000
```

* 3.생성된 뷰(v_em_dno)를 제거하시오.

