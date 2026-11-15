
-- Query 1: Students and departments
SELECT s.first_name, s.last_name, d.department_name
FROM students s
JOIN departments d
ON s.department_id = d.department_id;

-- Query 2: Students and grades
SELECT s.first_name, s.last_name,
       c.course_name, g.score
FROM students s
JOIN registrations r ON s.student_id = r.student_id
JOIN courses c ON r.course_id = c.course_id
JOIN grades g ON r.registration_id = g.registration_id;

-- Query 3: Average score for each course
SELECT c.course_name, AVG(g.score) AS average_score
FROM courses c
JOIN registrations r ON c.course_id = r.course_id
JOIN grades g ON r.registration_id = g.registration_id
GROUP BY c.course_name;

-- Query 4: Students scoring above 80
SELECT s.first_name, s.last_name, g.score
FROM students s
JOIN registrations r ON s.student_id = r.student_id
JOIN grades g ON r.registration_id = g.registration_id
WHERE g.score > 80;


EXPLAIN SELECT *
FROM students
WHERE department_id = 1;


CREATE INDEX idx_student_department
ON students(department_id);

EXPLAIN SELECT *
FROM students
WHERE department_id = 1;
