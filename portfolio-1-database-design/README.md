Portfolio 1: Database Design and Modelling

Case Study: University Student Result Management System

The system is designed to store university student
information, departments, lecturers, courses,
registrations and grades.

The main users are university administrators,
lecturers and students.

Six relational tables were created:
departments, students, lecturers, courses,
registrations and grades.

Each table has a primary key to uniquely identify
its records.

Foreign keys connect students and lecturers to
departments, courses to lecturers, registrations
to students and courses, and grades to registrations.

The registrations table resolves the many-to-many
relationship between students and courses.

Constraints include PRIMARY KEY, FOREIGN KEY,
NOT NULL, UNIQUE and CHECK.

Normalisation:
The database was designed around Third Normal Form
(3NF). Each table represents one main entity.
Attributes contain individual values (1NF).
Non-key attributes depend on their table's primary
key (2NF), and department, lecturer and course
details are separated to reduce transitive
dependencies (3NF).

This design reduces unnecessary duplication and
supports data integrity.

Implementation evidence includes the SQL schema,
sample data, student query results and ER diagram.
