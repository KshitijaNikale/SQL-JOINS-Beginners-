USE Student_db;
CREATE TABLE IF NOT EXISTS Students (
Roll_No INT PRIMARY KEY,
Name VARCHAR(100),
Age int
);
CREATE TABLE IF NOT EXISTS Course (
Course_ID INT PRIMARY KEY,
Course_Name VARCHAR(100),
Roll_No INT,
foreign key (Roll_no) REFERENCES 
Students(Roll_no)
);
SHOW TABLES;
INSERT INTO Students ( Roll_No, Name, Age)
VALUES 
(20,'Sofia',18),
(21,'Alice', 18),
(24, 'Bob', 19);

INSERT INTO Course (Course_ID, Course_Name, Roll_No)
Values
(101,'AI&DS',20),
(102,'Computer Science',21),
(103,'Robobtics',24);
SHOW TABLES;
SELECT *FROM Students;
SELECT * FROM Course;
SELECT *FROM Students;
INSERT INTO Students (Roll_No, Name, Age)
VALUES
(28,'Kevin',19);
INSERT INTO Course (Course_ID, Course_name, Roll_No)
VALUES
(104, 'Mechanical', NULL);
SELECT *FROM COURSE;
SELECT *FROM Students; 
SELECT Students.Roll_No, Students.Name, Students.Age,  Course.Course_ID , Course.Course_Name
FROM Students
LEFT JOIN Course
ON Students.Roll_No = Course.Roll_No
UNION  
SELECT  Students.Roll_No, Students.Name, Students.Age,  Course.Course_ID, Course.Course_Name
FROM Students
RIGHT JOIN Course
ON Students.Roll_No = Course.Roll_No;











