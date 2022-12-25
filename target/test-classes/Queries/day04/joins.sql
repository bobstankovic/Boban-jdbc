select * from address;
select  * from  CUSTOMER;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C inner join ADDRESS A
on C.ADDRESS_ID=A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C left outer join ADDRESS A
                           on C.ADDRESS_ID=A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C right  join ADDRESS A
                                on C.ADDRESS_ID=A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, ADDRESS, PHONE
from  ADDRESS A full join CUSTOMER C
                            on C.ADDRESS_ID=A.ADDRESS_ID;

