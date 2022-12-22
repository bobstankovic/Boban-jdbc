select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from employees
order by SALARY desc )
where ROWNUM <=5);