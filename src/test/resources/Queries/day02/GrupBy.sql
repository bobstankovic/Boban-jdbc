select * from employees;

select avg(SALARY), min(SALARY), max(SALARY), sum(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

select avg(SALARY), min(SALARY), max(SALARY), sum(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

select avg(SALARY), min(SALARY), max(SALARY), sum(SALARY) from EMPLOYEES
where JOB_ID = 'MK_MAN';

select count(*), JOB_ID, avg(SALARY), min(SALARY), max(SALARY), sum(SALARY) from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, count(*), sum(SALARY), max(SALARY), min(SALARY)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;

