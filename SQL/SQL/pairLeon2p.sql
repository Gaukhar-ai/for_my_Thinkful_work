SELECT *
FROM houseprices order by lotarea desc;

SELECT *
FROM houseprices
ORDER BY mszoning DESC;

SELECT yearbuilt, saleprice
from houseprices
order by saleprice desc, yearbuilt desc;

select yearbuilt, saleprice
from houseprices
where yearbuilt between 1990 and 2000
order by yearbuilt desc, saleprice desc;


--By combining WHERE, ORDER BY, and LIMIT,
--you can do things like find the top X results given
--some condition. For example, the statement below will
--return the top 10 sale prices of homes built before 1950.
select saleprice
from houseprices
where yearbuilt < 1950
order by saleprice desc
limit 10;

select 10 * overallcond
from houseprices;

select count (*)
from houseprices;

--Aliasing aggregates
select count(*) as count_records
from houseprices;

select count(yearbuilt)
from houseprices;

select count(yearbuilt) as count_yearbuilt, count(alley) as count_alley
from houseprices;


select COUNT(*)
from houseprices
where alley is null;


select distinct yearbuilt
from houseprices;

select distinct neighborhood
from houseprices;

select *
from houseprices;


select distinct yearbuilt, neighborhood
from houseprices
order by neighborhood, yearbuilt desc;

select count(distinct yearbuilt), count(distinct neighborhood)
from houseprices;

SELECT COUNT(DISTINCT yearbuilt), COUNT(DISTINCT neighborhood)
FROM houseprices
WHERE yearbuilt < 2000 AND neighborhood NOT LIKE 'G%';

SELECT COUNT (neighborhood), COUNT(yearbuilt)
from houseprices;


--Imagine that you wanted to count how many unique 
--yearbuilt values existed for each neighborhood.

SELECT neighborhood, COUNT(DISTINCT(yearbuilt))
FROM houseprices
GROUP BY neighborhood;

--The count of yearbuilt is now grouped by neighborhood. 
--In SQL, having an aggregated field grouped by another 
--field requires an aptly named special statement: GROUP BY.

SELECT COUNT(neighborhood), yearbuilt
FROM houseprices
GROUP BY yearbuilt;

SELECT yearbuilt AS yearbuilt, COUNT(neighborhood) AS number_of_neighborhoods
FROM houseprices
GROUP BY yearbuilt;

