CREATE DATABASE studentdb; 


USE STUDENTDB;


SELECT * FROM STUDENTS;


SELECT FIRSTNAME,LASTNAME FROM STUDENTS;


SELECT FIRSTNAME FROM STUDENTS;

SELECT * FROM STUDENTS WHERE GRADE = 1;

SELECT * FROM STUDENTS WHERE GRADE = 0;

SELECT * FROM STUDENTS WHERE GRADE <> 0;

SELECT * FROM STUDENTS WHERE GRADE < 4;

SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE "%E%" ;

SELECT * FROM STUDENTS WHERE LASTNAME LIKE "%A";

SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE "_____";

SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE "_____" AND GRADE > 2;

SELECT * FROM STUDENTS WHERE GRADE = 1 AND CLASSROOM = 102;

SELECT * FROM STUDENTS WHERE CLASSROOM IN (101, 108, 102, 105, 107);

SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE "_____";

SELECT * FROM STUDENTS WHERE GRADE IS NULL;

SELECT * FROM STUDENTS WHERE GRADE BETWEEN 1 AND 5;

SELECT * FROM STUDENTS ORDER BY CLASSROOM ;















