-- get all of the students without a gmail.com account and a phone number

SELECT name, email, id, cohort_id
FROM students
WHERE email NOT LIKE '%.gmail.com'
AND phone IS NULL; 