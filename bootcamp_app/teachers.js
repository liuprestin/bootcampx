const { Pool } = require('pg');

const pool = new Pool({
  user: 'lexbit',
  password: '',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '%${process.argv[2] || 'JUL02'}%'
ORDER BY teacher;

`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
}).catch(err => console.error('query error', err.stack));
