-- get the total number of assistance_requests for a student

SELECT COUNT(assistance_requests.student_id) AS total_assistances, students.name
FROM students
JOIN assistance_requests ON (assistance_requests.student_id = students.id)
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;