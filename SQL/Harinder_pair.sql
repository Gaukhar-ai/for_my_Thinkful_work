SELECT *
FROM vehicles;

--Concatenate the fuel and cyl fields together (with a space in between).
SELECT fuel || ' ' || cyl AS concat
FROM vehicles;

SELECT CONCAT(fuel, ' ', cyl) AS fuel_type
FROM vehicles;

--SELECT Small, 
	--REPLACE(REPLACE(Small, ''), ' ', '') AS non
--FROM vehicles;

--Replace any occurrences of the word “Small” in the class field with an empty string.
select class, 
replace(class, 'Small', ' ') as null 
from vehicles; --see difference at 480

--Create a field that parses out whether the vehicle is Automatic or Manual
--from the trans field (without the additional speed info).
SELECT split_part(trans, ' ', 1) from vehicles;











