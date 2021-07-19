-- Get the total amount of time that all students from a specific cohort have spent on all assignments

SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students
JOIN cohorts ON (students.cohort_id = cohorts.id)
JOIN assignment_submissions ON (students.id = assignment_submissions.student_id)
WHERE cohorts.name = 'FEB12';
