-- This is a single line 
/*
Suppose you want to label the films by their length based on the following logic:

If the lengh is less than 50 minutes, the film is short.
If the length is greater than 50 minutes and less than or equal to 120 minutes, the film is medium.
If the length is greater than 120 minutes, the film is long.
*/
SELECT title, length,
CASE
    WHEN length> 0 AND length <= 50 THEN 'Short'
    WHEN length > 50 AND length <= 120 THEN 'Medium'
    WHEN length> 120 THEN 'Long'
END AS film_duration
FROM film
ORDER BY length desc
LIMIT 10