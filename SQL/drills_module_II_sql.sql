--How many distinct values are there in the "country" field?

select count(distinct country)
from ksprojects;

select *
from ksprojects
limit 5;

--Write a query that returns the average number of backers per main_category, rounded to the nearest whole number and sorted from high to low.
--What is the numerical value of the first row in the returned dataset?
select main_category, round(avg(backers),0) as avg_backer
from ksprojects
group by main_category 
order by avg_backer desc;

--Write a query that shows, for each category, 
--how many campaigns were successful and the average difference per project
--between dollars pledged and the goal for successful campaigns in that category. 
--Which category raised the most (pledged) above and beyond its goal amount?

select category, count(*), avg(usd_pledged - goal) as success 
from ksprojects
where state = 'successful'
group by category 
order by success desc;

--Write a query that shows, for each main_category, how many successful projects
--had between 5 and 10 backers. 
--How many "Publishing" projects meet this criteria? 
select count(*) as success
from ksprojects
where state = 'successful'
and backers between 5 and 10 
and main_category = 'publishing';

SELECT COUNT(*) AS total
FROM ksprojects 
WHERE state = 'successful'
AND backers BETWEEN 5 AND 10 
AND main_category = 'Publishing';

-- Excluding Games and Technology records in the main_category field,
--return the total of all backers for successful projects by main_category
--where the total number of backers was over 100,000. 
--Sort by main_category from A-Z. How many backers does the first record have?
select main_category, sum(backers) as successers
from ksprojects
where state = 'successful'
and main_category not in('Games', 'Technology')
group by main_category
having sum(backers)>10000
order by main_category asc;


