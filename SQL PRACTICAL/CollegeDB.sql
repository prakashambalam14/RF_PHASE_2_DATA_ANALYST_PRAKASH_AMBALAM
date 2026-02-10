create database college;
use college;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    hod_name VARCHAR(100)
);

INSERT INTO departments VALUES
(1,'DATA SCIENCE','DR SHARMA'),
(2,'COMPUTER SCIENCE','DR PATEL'),
(3,'ELECTRONICS','DR IYER'),
(4,'MECHANICAL','DR REDDY'),
(5,'CIVIL','DR SINGH'),
(6,'MATHEMATICS','DR ROY'),
(7,'PHYSICS','DR DAS'),
(8,'BUSINESS ANALYTICS','DR MEHTA');

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(120),
    year INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO students VALUES
(101,'ANJALI','anjali@mail.com',2,1),
(102,'ROHIT','rohit@mail.com',1,2),
(103,'SNEHA','sneha@mail.com',3,3),
(104,'VIKAS','vikas@mail.com',4,1),
(105,'POOJA','pooja@mail.com',2,2),
(106,'ARJUN','arjun@mail.com',1,3),
(107,'MEERA','meera@mail.com',3,4),
(108,'NIKHIL','nikhil@mail.com',2,5),
(109,'KAVYA','kavya@mail.com',4,6),
(110,'RAVI','ravi@mail.com',1,7),
(111,'ISHA','isha@mail.com',3,8),
(112,'MANISH','manish@mail.com',2,1),
(113,'DIVYA','divya@mail.com',4,2),
(114,'SANJAY','sanjay@mail.com',1,3),
(115,'TANYA','tanya@mail.com',3,4),
(116,'VARUN','varun@mail.com',2,5),
(117,'RITU','ritu@mail.com',4,6),
(118,'DEEPAK','deepak@mail.com',1,7),
(119,'SHREYA','shreya@mail.com',3,8),
(120,'ADITYA','aditya@mail.com',2,1),
(121,'NISHA','nisha@mail.com',4,2),
(122,'GAURAV','gaurav@mail.com',1,3),
(123,'PAYAL','payal@mail.com',3,4),
(124,'MOHIT','mohit@mail.com',2,5),
(125,'SONAL','sonal@mail.com',4,6);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(120),
    credits INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO courses VALUES
(201,'MACHINE LEARNING',4,1),
(202,'DATA VISUALIZATION',3,1),
(203,'DATABASE SYSTEMS',4,2),
(204,'OPERATING SYSTEMS',4,2),
(205,'DIGITAL CIRCUITS',3,3),
(206,'THERMODYNAMICS',4,4),
(207,'STRUCTURAL DESIGN',3,5),
(208,'LINEAR ALGEBRA',4,6),
(209,'QUANTUM PHYSICS',4,7),
(210,'BUSINESS INTELLIGENCE',3,8);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments VALUES
(1,101,201,'SEM5',85),
(2,102,203,'SEM1',78),
(3,103,205,'SEM3',91),
(4,104,201,'SEM7',67),
(5,105,204,'SEM2',72),
(6,106,205,'SEM1',88),
(7,107,206,'SEM5',74),
(8,108,207,'SEM3',69),
(9,109,208,'SEM7',90),
(10,110,209,'SEM1',76),
(11,111,210,'SEM5',84),
(12,112,202,'SEM3',73),
(13,113,203,'SEM7',81),
(14,114,205,'SEM1',66),
(15,115,206,'SEM5',79),
(16,116,207,'SEM3',68),
(17,117,208,'SEM7',92),
(18,118,209,'SEM1',70),
(19,119,210,'SEM5',86),
(20,120,201,'SEM3',88);
--
select * from courses;
select * from departments;
select * from enrollments;
select * from students;
--

--  Student + Department List
SELECT s.student_id,
       s.student_name,
       d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id;

-- Student + Course + Marks
SELECT s.student_name,
       c.course_name,
       e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
ORDER BY e.marks DESC;

-- Course + Department
SELECT c.course_name,
       d.dept_name
FROM courses c
JOIN departments d
ON c.dept_id = d.dept_id;

-- Student Count per Department(Group By)

SELECT d.dept_name,
       COUNT(*) AS total_students
FROM students s
JOIN departments d ON s.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Average Marks per Course 
SELECT c.course_name,
       AVG(e.marks) AS avg_marks
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- Average Marks per Department
SELECT d.dept_name,
       AVG(e.marks) AS dept_avg
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN departments d ON s.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY dept_avg DESC;

-- Students Scoring Above 70
SELECT s.student_name,
       c.course_name,
       e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.marks > 70;


-- Courses with Credits >= 4

SELECT course_name, credits
FROM courses
WHERE credits >= 4;

-- Students Above Overall Average Marks(Subqueries)
SELECT student_name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE marks >
        (SELECT AVG(marks) FROM enrollments)
);

-- Enrollment Count per Course

SELECT c.course_name,
       COUNT(e.student_id) AS enrolled_students
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_name;





