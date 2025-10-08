
DESCRIBE netflix_cleaned;
SELECT COUNT(*) AS NULL_DIRECTOR 
FROM netflix_cleaned
WHERE DIRECTOR IS NULL;
#AGGREGATION
SELECT country, count(*) as total_titles from netflix_cleaned group by country;

#filtering
select * from netflix_cleaned where release_year > 2019;

#SORTING
SELECT title, release_year from netflix_cleaned order by release_year DESC;

#GROUP AND HAVING
SELECT COUNTRY, COUNT(*) AS TOTAL_TITLES
FROM netflix_cleaned GROUP BY COUNTRY
HAVING COUNT(*) > 100;

#COMBINE AGGREGATION,SORTING AND FILTERING
SELECT TITLE, COUNT(*) AS TOTAL_COUNT 
FROM netflix_cleaned
GROUP BY TITLE
HAVING COUNT(*) > 100
ORDER BY TOTAL_COUNT DESC;


