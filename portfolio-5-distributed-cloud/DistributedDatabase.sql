
-- Simulated distributed university database

CREATE TABLE students_server_a (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE students_server_b (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO students_server_a VALUES
(101, 'Ada Okafor', 'Computer Science'),
(102, 'Tunde Bello', 'Computer Science'),
(103, 'Amaka Eze', 'Business Administration');

INSERT INTO students_server_b VALUES
(104, 'David James', 'Mathematics'),
(105, 'Zainab Musa', 'Computer Science');



SELECT * FROM students_server_a
UNION ALL
SELECT * FROM students_server_b;



CREATE TABLE students_replica AS
SELECT * FROM students_server_a;

SELECT * FROM students_replica;
