* exists
```sql
select * from department where exists (select 1 from employee where employee.dno=department.dno);
```
* in
```sql
select * from department where dno in (select dno from employee);
```
* in ~ group by
```sql
select * from department where dno in (select dno from employee group by dno);
```
* 결과
```console
       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
```
* 설명
  - select문은 한행씩 실행 후에 where 조건을 비교해서 true면 담음.
