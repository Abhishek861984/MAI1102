USE students;

-- 1. find the students lastname with 3 characters  from end!
SELECT list.LastName,right(LastName,3)
From LIST;


-- 2. find the students lastname with 3 characters  from starting
SELECT LIST.LastName,Left(LastName,3)
From LIST;

-- 3. remove the EX from the last name of all the students
SELECT LIST.LastName,
TRIM(trailing'EX'FROM LastName)
FROM LIST;

-- 4. find the location of 'N' in students lastname
SELECT LIST.LastName,
POSITION('N' IN LastName)
FROM LIST;

-- 5. get the substring from index 4 to 2 characters from lastname column
SELECT LIST.LastName,SUBSTR(LastName, 4,3)
FROM LIST;

-- 6. find the sum of students grade and print the average grade from all the classrooms
SELECT avg(some)
FROM
(SELECT SUM(grade) As some
FROM list
GROUP BY classroom)
 grade_table;
 

--  7. show all the classroom id those teachers associated and also in which student studies

-- 8.  -- display the students who goes with the same bus route 


 
 
 
