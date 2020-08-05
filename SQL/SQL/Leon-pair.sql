select created_at
from purchases;

select created_at
created_at INTERVAL '90 days'
FROM purchases;

select created_at,
TO_CHAR(created_at, 'mm/dd/yyyy') as date_string
from purchases;

select created_at,
DATE_TRUNK('hour', created_at) as hour
from purchases;


SELECT created_at,
TO_CHAR(created_at, 'YYYY') as year,
to_char(created_at, 'MM') as month,
to_char(created_at, 'dd') as day
from purchases;






-- The date the purchase was made (created_at field).
SELECT created_at
FROM purchases;
​
-- Add 30 days to the purchase date.
SELECT created_at
,created_at + INTERVAL '30 days'
FROM purchases;
​
-- Subtract 90 days from the purchase date.
SELECT created_at
,created_at - INTERVAL '90 days'
FROM purchases;
​
-- Convert the purchase date to a date string using the formatting of your choice.
SELECT created_at 
,TO_CHAR(created_at, 'MM/DD/YYYY') AS date_string
FROM purchases;
​
-- Truncate the purchase date to the hour.
SELECT created_at
,DATE_TRUNC('hour', created_at) AS hour
FROM purchases;
​
-- Extract from the purchase date the year, month, day, weekday name, and week number.
SELECT created_at
,TO_CHAR(created_at, 'YYYY') AS Year
,TO_CHAR(created_at, 'MM') AS Month
,TO_CHAR(created_at, 'DD') AS Day
FROM purchases;





