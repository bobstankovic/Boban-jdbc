select EMAIL||'@gmail.com' as "Full Email" from employees;

select lower(concat(EMAIL, '@gmail.com')) as "Full Email" from EMPLOYEES;

select upper(concat(EMAIL, '@gmail.com')) as "Full Email" from EMPLOYEES;

select INITCAP(concat(EMAIL, '@gmail.com')) as "Full Email" from EMPLOYEES;

select LENGTH(concat(EMAIL, '@gmail.com')) as lenght, INITCAP(concat(EMAIL, '@gmail.com'))  as "Full Email" from EMPLOYEES;

select FIRST_NAME||' '|| LAST_NAME as "Full name", length(FIRST_NAME|| LAST_NAME) as langht from EMPLOYEES;

select FIRST_NAME||' '|| LAST_NAME as "Full name", length(FIRST_NAME|| LAST_NAME) as langht from EMPLOYEES
order by 2;

select substr(FIRST_NAME,0,1)  || '.' ||substr(LAST_NAME,0,1)|| '.' as initials, FIRST_NAME, LAST_NAME from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3),  SALARY from EMPLOYEES
where SALARY > 3000
order by lower(substr(FIRST_NAME,-3));