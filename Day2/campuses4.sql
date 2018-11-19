CREATE DATABASE Campusesdb;

USE campusesdb;

SELECT *
FROM campuses;

-- 1. find the location of campuses 3 characters  last 
SELECT campusesdb.campuses.Campus,right(campuses.campus,3)
From campusesdb.campuses;

-- 2. find the location of campuses with 3 characters from starting
SELECT campusesdb.campuses.Campus,LEFT(campuses.campus,3)
From campusesdb.campuses;

-- 3. remove the ld from the location of all campuses
SELECT campusesdb.campuses.Location,
TRIM(trailing 'ld' FROM Location)
FROM campusesdb.campuses;

-- 4. find the location on 'i' in location of all campuses
SELECT campusesdb.campuses.Location,
POSITION('i' IN Location)
FROM campusesdb.campuses;

-- 5. get the substring from index 4 to 2 characters from lastname column
SELECT campusesdb.campuses.Location,
SUBSTR(Location, 4,2)
FROM campusesdb.campuses;

-- 6. find the sum of all campuses fee and also print the average fee from all the years
SELECT avg(some)
FROM
(SELECT SUM(csufees.campusfee) As some
FROM campusesdb.csufees
GROUP BY Year)
 grade_table;
 