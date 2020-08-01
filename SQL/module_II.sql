SELECT AVG(saleprice), yearbuilt, neighborhood
FROM houseprices
GROUP BY yearbuilt, neighborhood
ORDER BY neighborhood, yearbuilt DESC;

----ROUND to clean up your results.
SELECT ROUND(AVG(saleprice),0), yearbuilt, neighborhood
FROM houseprices
GROUP BY yearbuilt, neighborhood
ORDER BY neighborhood, yearbuilt DESC;

--how many numbers you're actually averaging in the first place.
--with a COUNT aggregation.
SELECT ROUND(AVG(saleprice),0) AS avg_houseprice, COUNT(saleprice) AS count_houseprice, yearbuilt, neighborhood
FROM houseprices
GROUP BY yearbuilt, neighborhood
ORDER BY neighborhood, yearbuilt DESC;

--You know that an average is a sum of records divided by their count.
--But what COUNT is AVG using here? 
--Is it using the count of all records or the count of nonnull lotfrontage records?
--You can get an answer using the statement below.

SELECT SUM(lotfrontage) AS sum_lotfrontage, 
COUNT(*) AS count_all_records,
COUNT(lotfrontage) AS count_lotfront_records,
AVG(lotfrontage) AS avg_lotfrontage
FROM houseprices;

--You can't divide records by zero. 
--But you can use conditional logic to replace desired values.
--In this case, use NULLIF.
SELECT garagetype, AVG(garagearea/garagecars) AS avg_area_per_garage_bay
FROM houseprices
GROUP BY garagetype;

--If x and y are equal to each other, SQL returns a NULL.
--If they are not equal, SQL returns the value of x.
--Therefore, you can use this function to replace 
--any potential zeroes in the denominators with NULL values.
--SQL will then exclude these records from aggregation.

SELECT garagetype, avg(garagearea/NULLIF(garagecars,0)) as avg_area_per_garage_bay
FROM houseprices
GROUP BY garagetype;

SELECT SUM(lotfrontage) AS sum_lotfront, lotshape, street
FROM houseprices
WHERE yearbuilt < 1980
GROUP BY lotshape, street
ORDER BY sum_lotfront DESC;

SELECT MIN(lotarea) AS min_lotarea, roofstyle
FROM houseprices
WHERE yearbuilt >= 1970
GROUP BY roofstyle
ORDER BY min_lotarea DESC;

select *
from houseprices
limit 5;

select MAX(saleprice) as max_saleprice, yrsold, housestyle
from houseprices
group by yrsold, housestyle
order by housestyle, max_saleprice desc;

--query returns a table listing the average sale price of a home sold
--in the year 2010, grouped by neighborhood and sorted by average sales 
--price from high to low. But with this list, how would you get the top five records?
SELECT ROUND(AVG(saleprice),0) AS avg_saleprice, neighborhood
FROM houseprices
WHERE yrsold = 2010
GROUP BY neighborhood
ORDER BY avg_saleprice DESC
LIMIT 5;

--What if you want to get all of the records
--in which the average sale price is above $200,000?
SELECT ROUND(AVG(saleprice),0) AS avg_saleprice, neighborhood
FROM houseprices
WHERE yrsold = 2010
GROUP BY neighborhood
HAVING ROUND(AVG(saleprice),0) > 200000
ORDER BY avg_saleprice DESC;

SELECT ROUND(AVG(saleprice),0) AS avg_saleprice, neighborhood
FROM houseprices
WHERE yrsold = 2010
GROUP BY neighborhood
ORDER BY avg_saleprice DESC;

SELECT ROUND(AVG(saleprice),0) AS avg_saleprice, neighborhood
FROM houseprices
WHERE yrsold = 2010
GROUP BY neighborhood
HAVING ROUND(AVG(saleprice),0) > 200000
ORDER BY avg_saleprice DESC;

SELECT MAX(lotarea) AS max_lotarea, mszoning
FROM houseprices
WHERE yearbuilt > 1950
GROUP BY mszoning
HAVING MAX(lotarea) > 10000
ORDER BY max_lotarea DESC;





