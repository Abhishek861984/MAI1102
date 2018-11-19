CREATE DATABASE studentdb;

USE studentdb;

SELECT * FROM students;

SELECT COUNT(*) FROM students;


-- Given a student’s last name, find the student’s grade, classroom and
-- teacher
SELECT Stfirstname,Grade,Tfirstname,Tlastname FROM STUDENTS WHERE StlastName = "COOKUS";


-- Given a student’s last name, find the bus route the student takes
SELECT Stfirstname,BUS FROM STUDENTS WHERE STLASTNAME = "RACANELLO";


-- Given a teacher, find the list of students in his/her class
SELECT STFIRSTNAME,STLASTNAME FROM STUDENTS WHERE TFIRSTNAME = "JED";


-- Given a bus route, find all students who take it
SELECT STFIRSTNAME,STLASTNAME FROM STUDENTS WHERE BUS = 51;


-- Find all students at a specified grade level.
SELECT STFIRSTNAME,STLASTNAME FROM STUDENTS WHERE GRADE = 3;


-- Find a student with a given last name
SELECT STlastname, STfirstname, grade, classroom ,tfirstname,TLastName FROM STUDENTS WHERE STLASTNAME = "EARLY";

-- Find a teacher with a given last name
SELECT STFIRSTNAME,STLASTNAME FROM STUDENTS WHERE TLASTNAME = "FAFARD"; 


-- Find a classroom with a number
SELECT STFIRSTNAME,STLASTNAME FROM STUDENT WHERE CLASSROOM  = 111;

 
-- Find a bus with a number
SELECT STFIRSTNAME,STLASTNAME,GRADE,CLASSROOM FROM STUDENTS WHERE BUS = 55;


-- all the unique bus routes
SELECT DISTINCT(BUS) FROM STUDENTS;


-- the total number of students for each bus routes
SELECT COUNT(STFIRSTNAME) AS NAME,BUS FROM STUDENTS GROUP BY BUS;

-- all the unique Grades
SELECT DISTINCT(GRADE) FROM STUDENTS ORDER BY GRADE;


-- total number of students for each grades
SELECT  GRADE,COUNT(STFIRSTNAME) AS NAME FROM STUDENTS GROUP BY GRADE;


-- STUDENTS WITH HIGHEST GRADE AND LOWEST ROUTE NUMBER
SELECT * FROM STUDENTS  GROUP BY BUS ORDER BY GRADE DESC ;