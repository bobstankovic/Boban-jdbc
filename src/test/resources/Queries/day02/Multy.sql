select * from EMPLOYEES;

select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;

select count(*) from EMPLOYEES
where SALARY > (select avg(salary) from employees);

select * from EMPLOYEES
where SALARY > (select avg(salary) from employees);

select round(avg(SALARY),2) from EMPLOYEES;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY = (select max(SALARY) from employees);
