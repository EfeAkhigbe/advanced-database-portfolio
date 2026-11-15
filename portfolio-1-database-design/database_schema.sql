
CREATE DATABASE IF NOT EXISTS university_results;
USE university_results;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE lecturers (
    lecturer_id INT PRIMARY KEY,
    lecturer_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    lecturer_id INT,
    FOREIGN KEY (lecturer_id)
        REFERENCES lecturers(lecturer_id)
);

CREATE TABLE registrations (
    registration_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    academic_year VARCHAR(20) NOT NULL,
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id),
    UNIQUE (student_id, course_id, semester, academic_year)
);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY,
    registration_id INT NOT NULL UNIQUE,
    score DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (registration_id)
        REFERENCES registrations(registration_id),
    CHECK (score BETWEEN 0 AND 100)
);
