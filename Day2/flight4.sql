USE flight;

-- 1. find the abbreviations of flights  3 characters long  last
SELECT flight.airlines.Abbreviation,
right(Abbreviation,3)
From airlines;

-- 2. find the abbreviations of flights with 3 characters  from starting
SELECT flight.airlines.Abbreviation,
LEFT(Abbreviation,3)
FROM airlines;

-- 3. remove the 'ir' from all the abbreviations of flights
SELECT flight.airlines.Abbreviation,
TRIM(trailing 'ir' FROM Abbreviation)
From  airlines;

-- 4. find the location on 'i' in abbreviations of flights
SELECT  flight.airlines.Abbreviation,
POSITION('i' IN Abbreviation )
FROM airlines;

-- 5. get the substring from index 4 to 2 characters from abbreviations of flights
SELECT flight.airlines.Abbreviation,
SUBSTR(Abbreviation, 4,2)
FROM  airlines;


-- 6. find the count of all flights for airlines and make average of that
SELECT avg(some)
FROM
(SELECT COUNT(flights.Airline) As some
FROM flight.flights
GROUP BY airline)
 grade_table;

-- 7. show all the airline id those having airline name and flights associated 


-- 8. display the flights who shares  same airlines
