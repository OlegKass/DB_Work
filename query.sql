-- 1 ?????
Select category_name, count(*)
From categories
Group By category_name
-- 2 ?????
SELECT birth_country_name AS event, ROUND(COUNT(birth_country_name) * 100 / (SELECT COUNT(*) FROM Laureat), 2)
AS percentage
FROM Birth inner join birth_city
using(birth_city_name)
join birth_country
using(birth_country_name)
GROUP BY birth_country_name
-- 3 ?????
SELECT reward_year, COUNT(*) 
from Laureat
Group by reward_year