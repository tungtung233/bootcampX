-- get all cohorts with 18 or more students

SELECT cohorts.name AS cohort_name, COUNT(*) AS student_count
FROM students
JOIN cohorts ON (students.cohort_id = cohorts.id)
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY student_count;