-- get the total number of assistance_requests for a teacher

SELECT count(assistance_requests.teacher_id) AS total_assistances, teachers.name 
FROM teachers
JOIN assistance_requests ON (assistance_requests.teacher_id = teachers.id)
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;