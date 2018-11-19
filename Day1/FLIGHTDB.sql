CREATE DATABASE flightdb;

use flightdb;

SELECT * FROM flights;

SELECT sourceairport,destairport FROM flights;

SELECT FLIGHTNO FROM FLIGHTS;

SELECT * FROM FLIGHTS WHERE airline = 2;

select * from flights WHERE AIRLINE = 2 OR AIRLINE =5;

SELECT * FROM flights WHERE airline > 3;

SELECT * FROM flights WHERE sourceairport LIKE "A%";

SELECT * FROM flights WHERE sourceairport LIKE "%V";

SELECT * FROM flights WHERE  SOURCEAIRPORT LIKE  "___"; 

SELECT * FROM flights WHERE  sourceairport LIKE "%KI" AND airline > 3;

SELECT * FROM flights WHERE airline IN (2,3,5);

SELECT * FROM flights WHERE FLIGHTNO NOT LIKE "____";

SELECT * FROM  FLIGHTS WHERE FLIGHTNO IS NULL;

SELECT * FROM FLIGHTS WHERE FLIGHTNO BETWEEN 2 AND 30;

SELECT * FROM FLIGHTS ORDER BY FLIGHTNO DESC;
