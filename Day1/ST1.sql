CREATE DATABASE STUDENTDB;
USE STUDENTDB;
-- TASK 1
-- Given a student’s last name, find the student’s grade, classroom and teachers 
SELECT LIST.GRADE,LIST.CLASSROOM, TEACHERS.FIRSTNAME, TEACHERS.LASTNAME
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND 
LIST.LASTNAME LIKE '%BEAN%';

-- TASK 2
-- Given a student’s last name, find the bus route the student takes
SELECT LIST.BUS,LIST.FIRSTNAME
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND 
LIST.LASTNAME LIKE '%EX%';

-- TASK 3
-- Given a teacher, find the list of students in his/her class
SELECT LIST.FIRSTNAME,LIST.LASTNAME
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
TEACHERS.FIRSTNAME LIKE '%OR%';
 
 -- TASK 4
-- Given a bus route, find all students who take it
SELECT LIST.BUS,LIST.FIRSTNAME,LIST.LASTNAME
FROM LIST
WHERE LIST.BUS = 55;
 
-- TASK 5
-- Find all students at a specified grade level.
SELECT LIST.FIRSTNAME,LIST.LASTNAME,LIST.GRADE
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
LIST.GRADE = 0;

-- TASK 6
-- Find a student with a given last name
-- For each entry found, print the last name, first name, grade, classroom and teacher name
SELECT LIST.FIRSTNAME,LIST.LASTNAME,LIST.GRADE,TEACHERS.CLASSROOM,TEACHERS.FIRSTNAME,TEACHERS.LASTNAME
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
LIST.LASTNAME LIKE'%AMY%';

-- TASK 7
-- Find a student with a given last name
-- For each entry found, print the last name, first name and the bus route
-- the student takes
SELECT LIST.LASTNAME,LIST.FIRSTNAME,LIST.BUS
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
LIST.LASTNAME LIKE '%AMY%';

-- TASK 8
-- Find a teacher with a given last name
-- For each entry found, print the last and the first name of the student.
SELECT LIST.LASTNAME,LIST.FIRSTNAME
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
TEACHERS.LASTNAME LIKE '%SE%';

-- TASK 9
-- Find a classroom with a number 
-- For each entry, output the name (last and first) of the student
SELECT LIST.FIRSTNAME,LIST.LASTNAME,LIST.CLASSROOM
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
LIST.CLASSROOM = 111;

-- TASK 10
-- Find a bus with a number 
-- For each such entry, output the first and the last name of the student
-- and their grade and classroom
SELECT LIST.FIRSTNAME,LIST.LASTNAME,LIST.GRADE,TEACHERS.CLASSROOM
FROM LIST,TEACHERS
WHERE LIST.CLASSROOM = TEACHERS.CLASSROOM AND
LIST.BUS = 51;

-- Task 11
-- Display all the unique bus routes
SELECT DISTINCT(LIST.BUS)
FROM LIST;

-- Task 12
-- Display the total number of students for each bus routes
SELECT LIST.BUS,COUNT(LIST.FIRSTNAME)
FROM LIST
GROUP BY LIST.BUS;

-- Task 13
-- Display all the unique Grades
SELECT DISTINCT(LIST.GRADE)
FROM LIST;

-- Task 14
-- Display the total number of students for each grades
SELECT COUNT(LIST.FIRSTNAME),GRADE
FROM LIST
GROUP BY LIST.GRADE;