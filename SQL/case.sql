SELECT 
	CASE
		WHEN cty < 18 THEN 'BELOW AVERAGE'
		WHEN cty >= 18 THEN 'ABOVE AVERAGE' 
	END AS average,
make, model, year, cty AS city_mpg
FROM vehicles
WHERE year BETWEEN 1990 AND 2000 And make = 'Ford'

LIMIT 100;