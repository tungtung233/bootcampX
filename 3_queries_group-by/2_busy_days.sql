-- get the days where the total number of assignments is greater than or equal to 10

SELECT day, COUNT(day) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day;