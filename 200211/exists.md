* exists
```sql
select * from department where exists (select 1 from employee where employee.dno=department.dno);
```
* in
```sql
select * from department where dno in (select dno from employee);
/*
select * from department where dno in (20, 30, 20, 30, 30, 10, 30, 30, 10, 30, 20, 20, 20, 10);
*/
```
* in ~ group by
```sql
select * from department where dno in (select dno from employee group by dno);
/*
select * from department where dno in (10, 20, 30, 40);
*/
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
  - select문은 한행씩 ***무조건 실행***된 후에 where 조건을 비교해서 true면 담음.
