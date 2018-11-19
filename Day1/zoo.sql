

-- creating zooDB database
create database zooDB;

-- changing database to zoodb	
use zoodb; 

-- import data from zoo.csv


-- SQL operators

-- Question 1:
-- Display all columns data of all the rows from the zoo table ?
SELECT * FROM zoo; 

-- Question 2:
-- Display animal name and water needed of all the animals from the zoo table ?
SELECT animal, water_need FROM zoo; 


-- Question 3:
-- Display animal name of all the animals from the zoo table ?

SELECT animal, animal, animal FROM zoo; 


-- SQL WHERE operators

-- Question 1:
-- Select all animals, that are elephants  from the zoo table ?
SELECT * FROM zoo WHERE animal = 'elephant'; 



-- Question 2:
-- Select all animals, that are zebra’s from the zoo table ?

SELECT * FROM zoo WHERE animal = 'zebra'; 


-- SQL WHERE with comparison operators

-- comparison operators
-- =	  Equals to
-- <>	not equals to
-- !=	not equals to
-- <	  Less than
-- <=	Less-equal than
-- >	  Greater than
-- >=	Greater-equal than


-- Question 1:
-- Select all the animals, that are not zebras from the zoo table ?
SELECT * FROM zoo WHERE animal <> 'zebra'; 


-- Question 2:
-- Select all the animals for whom the water needed is less than 300 from the zoo table ?
SELECT * FROM zoo WHERE water_need < 300; 


-- SQL WHERE clause with LIKE operator

-- Question 1:
-- Select all animals whose name contains at least one e character from the zoo table ?
SELECT * FROM zoo WHERE animal LIKE '%e%'; 



-- Question 2:
-- Select all animals whose name ends with ‘roo’  from the zoo table ?
SELECT * FROM zoo WHERE animal LIKE '%roo'; 


-- Question 3:
-- Select all animals whose species name is exactly five characters long from the zoo table ?
SELECT * FROM zoo WHERE animal LIKE '_____'; 


-- SQL WHERE clause with AND logical operator

-- Question 1:
-- Select only those animals  from the zoo table ? that:
-- •	have a name exactly five characters long
-- •	are not tigers
-- •	have a water_need more than 200


-- SQL WHERE clause with OR logical operator


-- AND returns every row where all the conditions are true.
-- OR returns every row where at least one of the conditions is true.

-- Question 1:
-- Select animals that are lions, plus all the animals that have less than 300 water_need  from the zoo table ?
SELECT * FROM zoo WHERE water_need < 300 OR animal = 'lion';


-- SQL IN operator

-- Question 1:
-- Select all the animals whose unique id is any of these: 
-- 1001, 1008, 1012, 1015, 1018 from the zoo table ?
SELECT * FROM zoo WHERE uniq_id = 1001 OR uniq_id = 1008 OR uniq_id = 1012 OR uniq_id = 1015 OR uniq_id = 1018;

SELECT * FROM zoo WHERE uniq_id IN (1001,1008,1012,1015,1018);

-- The SQL NOT operator

-- Question 1:
-- Select all the animals that are not 5 characters long  from the zoo table ?
SELECT * FROM zoo WHERE animal NOT LIKE '_____'; 


-- The SQL  IS NULL operator
-- Select all the animals where water_need is null?
SELECT * FROM zoo WHERE water_need IS NULL;


-- The SQL BETWEEN operator
-- Select all the animals where water_need is between 200 to 500?
SELECT * FROM ZOO WHERE water_need BETWEEN 200 AND 500;


-- The SQL ORDER BY operator
-- sort all the animals according to their water needs.
SELECT * FROM zoo ORDER BY water_need;




insert into zoo (animal, uniq_id, water_need) values("elephant", 1023, NULL);