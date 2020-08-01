--Create a permanent table called normal that contains all property sales 
--where the sale condition was Normal.
create table if not exists normal as 
select *
from houseprices
where salecondition = 'normal';

select *
from houseprices;

--Drop the normal table you just created and then recreate it again
--using the name normal_sales.
drop table if exists normal;

select * from normal

drop table if exists normal_sales;


select *
from normal_sales
order by neighborhood asc;

--From the newly-created normal_sales table, delete all 
--the records where the neighborhood is Veenker.
create table if not exists normal_sales as 
select *
from houseprices
where salecondition = 'Normal';

delete 
from normal_sales
where neighborhood = 'Veenker';

--Re-insert the Veenker neighborhood normal sale condition records.

insert into normal_sales
select *
from houseprices
where neighborhood = 'Veenker';

--INSERT INTO bmw
SELECT id, make, model, year, drive, cty 
FROM vehicles
WHERE make='BMW';
--For all properties where the sale price was greater than $300,000,
--update the overall condition to be equal to the overall quality.
