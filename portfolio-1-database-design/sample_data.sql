
USE university_results;

INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Business Administration'),
(3, 'Mathematics');

INSERT INTO students VALUES
(101, 'Ada', 'Okafor', 'ada@example.com', 1),
(102, 'Tunde', 'Bello', 'tunde@example.com', 1),
(103, 'Amaka', 'Eze', 'amaka@example.com', 2),
(104, 'David', 'James', 'david@example.com', 3),
(105, 'Zainab', 'Musa', 'zainab@example.com', 1);

INSERT INTO lecturers VALUES
(1, 'Dr. Ibrahim', 1),
(2, 'Dr. Adebayo', 2),
(3, 'Dr. Nwosu', 3);

INSERT INTO courses VALUES
(1, 'Database Systems', 'CSC301', 1),
(2, 'Programming', 'CSC201', 1),
(3, 'Business Management', 'BUS201', 2),
(4, 'Statistics', 'MAT201', 3);

INSERT INTO registrations VALUES
(1, 101, 1, 'First', '2026/2027'),
(2, 101, 2, 'First', '2026/2027'),
(3, 102, 1, 'First', '2026/2027'),
(4, 103, 3, 'First', '2026/2027'),
(5, 104, 4, 'First', '2026/2027'),
(6, 105, 1, 'First', '2026/2027');

INSERT INTO grades VALUES
(1, 1, 85),
(2, 2, 78),
(3, 3, 67),
(4, 4, 91),
(5, 5, 73),
(6, 6, 88);
