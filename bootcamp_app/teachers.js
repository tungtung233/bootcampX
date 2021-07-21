const args = process.argv;
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
  FROM teachers
  JOIN assistance_requests ON (teachers.id = assistance_requests.teacher_id)
  JOIN students ON (students.id = assistance_requests.student_id)
  JOIN cohorts ON (students.cohort_id = cohorts.id)
  WHERE cohorts.name = '${args[2]}'
  ORDER BY teachers.name;
`)
  .then(res => {
    res.rows.forEach(element => {
      console.log(`${element.cohort}: ${element.teacher}`)
    })
  })