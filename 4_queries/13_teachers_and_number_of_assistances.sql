-- Get the name of all teachers that performed an assistance request during a cohort and the total number of assistances too

SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, COUNT(*) AS total_assistances
FROM teachers
JOIN assistance_requests ON (teachers.id = assistance_requests.teacher_id)
JOIN students ON (students.id = assistance_requests.student_id)
JOIN cohorts ON (students.cohort_id = cohorts.id)
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher