create table scrumteam(
    empid INTEGER primary key,
    firstname varchar(30) not null,
    jobtitle varchar(20),
    age integer,
    salary Integer
);

select * from scrumteam;

insert into agileteam(empid, firstname, jobtitle, age, salary)
values (1, 'Mike', 'Tester', 20, 120000);

insert into agileteam(empid, firstname, jobtitle, age, salary)
values (2, 'John', 'Tester', 27, 130000);

insert into agileteam(empid, firstname, jobtitle)
values (3, 'Dembe', 'Developer');

insert into agileteam
values (4, 'Henry', 'SM', 30, 70000);

update scrumteam
set salary = salary*1.2;

update scrumteam
set salary=salary+5000
where jobtitle='Tester';

update scrumteam
set age = 34
where FIRSTNAME = 'Dembe';

update scrumteam
set salary = 185000
where empid = 3;

select * from scrumteam;

delete from scrumteam
where firstname = 'Henry';

commit ;

alter table  scrumteam
add gender varchar(20);

update scrumteam
set gender='Male';

alter table scrumteam
rename column salary to annual_salary;

alter table scrumteam
drop column gender;

alter table scrumteam
rename to agileteam;

truncate table agileteam;

drop table agileteam;

select * from agileteam;

commit ;



