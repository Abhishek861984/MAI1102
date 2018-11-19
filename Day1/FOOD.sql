USE BAKERYDB;

SELECT count(food) FROM GOODS WHERE flavor = "Chocolate";

SELECT SUM(PRICE) FROM GOODS WHERE FLAVOR = "APPLE"; 

SELECT AVG(PRICE) FROM GOODS WHERE FOOD = "CAKE";

SELECT MAX(PRICE) FROM GOODS;

SELECT MIN(PRICE) FROM GOODS;

SELECT FOOD,COUNT(FOOD)  FROM GOODS GROUP BY FOOD; 

SELECT SUM(PRICE),FLAVOR FROM GOODS GROUP BY FLAVOR;

SELECT AVG(PRICE),FOOD FROM GOODS WHERE FOOD = "CAKE" OR FOOD = "ECLAIR"  GROUP BY FOOD;

SELECT MAX(PRICE),FOOD FROM GOODS GROUP BY FOOD;

SELECT MIN(PRICE),FLAVOR FROM GOODS GROUP BY FLAVOR;

SELECT COUNT(FOOD) AS FD,FOOD FROM GOODS GROUP BY FOOD ORDER BY FD;

SELECT COUNT(FOOD) AS FD,FOOD FROM GOODS WHERE FLAVOR = "CHOCOLATE" GROUP BY FOOD  ORDER BY FOOD; 