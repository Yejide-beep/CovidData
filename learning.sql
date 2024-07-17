
SELECT title, length,
CASE
    WHEN length> 0 AND length <= 50 THEN 'Short'
    WHEN length > 50 AND length <= 120 THEN 'Medium'
    WHEN length> 120 THEN 'Long'
END AS film_duration
FROM film
ORDER BY length desc
LIMIT 10