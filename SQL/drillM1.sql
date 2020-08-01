SELECT  make, model, year, (hwy+cty)/2 AS average
FROM vehicles
LIMIT 5;

SELECT *
FROM vehicles
LIMIT 5;

SELECT year, make, model, hwy || 'highway;' || cty ||' city;' as mpg_info
FROM vehicles;

SELECT year, make, model, hwy || 'highway;' || cty || 'city.' AS mpg_info
FROM vehicles;

--Count the number of vehicles that are either Fords or Chevrolets and either 'Compact Cars' or 'Two Seaters'.
select COUNT (*)
FROM vehicles
WHERE 
	make IN ('Ford', 'Chevrolet')
	AND class in ('Compact Cars', 'Two Seaters');
	
--Write a query that returns all the records of vehicles since the year 2000 whose model name starts with a capital X. Sort the list A through Z by make.
--If you use a lowercase “x” instead you will get the same result.	
SELECT *
FROM vehicles
WHERE model LIKE 'X%'
AND year >=2000 
ORDER BY make;

--Write a query that returns all records whose model name has a (capital) X in its 3rd position.
--Hint: make sure your wildcard operator accommodates for any characters after the “X”!

SELECT *
FROM vehicles
WHERE model LIKE '__X%';

