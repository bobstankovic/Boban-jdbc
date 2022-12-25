select * from  testers
union
select * from DEVELOPERS;

select NAMES from DEVELOPERS
UNION
select NAMES from TESTERS;

select NAMES from DEVELOPERS
UNION all
select NAMES from TESTERS;

select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

select NAMES from TESTERS
minus
select NAMES from DEVELOPERS;


select NAMES from  testers
intersect
select NAMES from DEVELOPERS;
