select count(*), JOB_ID, avg(SALARY) from employees
group by JOB_ID
having avg(SALARY) > 5000;

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES));

select * from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);