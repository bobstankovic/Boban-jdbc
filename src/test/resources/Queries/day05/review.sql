select  FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES join departments
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select  FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES right join departments
                    on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select  FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES left join departments
                          on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select  FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES full join departments
                         on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select * from LOCATIONS;
select CITY, country_name from  LOCATIONS l right join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;

select DEPARTMENT_NAME, STREET_ADDRESS from DEPARTMENTS d join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

select DEPARTMENT_NAME, STREET_ADDRESS from DEPARTMENTS d join LOCATIONS l
                                                               on d.LOCATION_ID = l.LOCATION_ID;

select START_DATE,JOB_TITLE, FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME, REGION_NAME from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID
join REGIONS r
on c.REGION_ID = r.REGION_ID
join JOBS
on e.JOB_ID = JOBS.JOB_ID
join JOB_HISTORY
on d.DEPARTMENT_ID = JOB_HISTORY.DEPARTMENT_ID;

select  COUNTRY_NAME, count(*) from EMPLOYEES e join DEPARTMENTS d
                                                                                                                           on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                                                                                                                      join LOCATIONS l
                                                                                                                           on d.LOCATION_ID = l.LOCATION_ID
                                                                                                                      join COUNTRIES c
                                                                                                                           on l.COUNTRY_ID = c.COUNTRY_ID
                                                                                                                      join REGIONS r
                                                                                                                           on c.REGION_ID = r.REGION_ID
                                                                                                                      join JOBS
                                                                                                                           on e.JOB_ID = JOBS.JOB_ID
                                                                                                                      join JOB_HISTORY
                                                                                                                           on d.DEPARTMENT_ID = JOB_HISTORY.DEPARTMENT_ID
group by COUNTRY_NAME;

select  workers.FIRST_NAME, workers.LAST_NAME, managers.FIRST_NAME, managers.LAST_NAME
from EMPLOYEES workers join EMPLOYEES managers
on workers.MANAGER_ID = managers.EMPLOYEE_ID;



select  managers.FIRST_NAME || ' ' || managers.LAST_NAME as "Manager Name", count(*)
from EMPLOYEES workers join EMPLOYEES managers
 on workers.MANAGER_ID = managers.EMPLOYEE_ID
group by (managers.FIRST_NAME || ' ' || managers.LAST_NAME)
order by 2 desc ;


