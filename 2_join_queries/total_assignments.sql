SELECT SUM(assignment_submissions.duration) as total_duraction 
FROM assignment_submissions JOIN students ON students.id = assignment_id
WHERE assignment_submissions.student_id = 'Ibrahim Schimmel';