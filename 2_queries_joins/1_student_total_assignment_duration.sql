-- Get the total amount of time that a student has spent on all assignments

SELECT sum(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students 
ON (students.id = assignment_submissions.student_id)
WHERE students.name = 'Ibrahim Schimmel';