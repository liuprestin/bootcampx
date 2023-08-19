SELECT SUM(assignment_submissions.duration) as total_duraction 
FROM assignment_submissions 
JOIN students ON students.id = assignment_id
JOIN cohorts ON cohort.id = students.cohort_id
WHERE cohorts.start_data = 'FEB12';