SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name as name 
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id 
where name = 'Waylon Boehm'
GROUP BY teachers.name;