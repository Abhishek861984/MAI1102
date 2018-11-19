CREATE DATABASE bakerydb;

USE bakerydb;

SELECT * FROM goods;

SELECT * FROM goods WHERE Flavor ="Apple"; 

SELECT Flavor,SUM(price) FROM goods WHERE Flavor = "Apple";


SELECT Flavor, COUNT(Flavor) FROM goods WHERE Flavor = 'Chocolate'; 

SELECT COUNT(price) FROM goods WHERE Flavor= "Apple";

SELECT COUNT(price) FROM goods WHERE Flavor= "Apple" GROUP BY Flavor ;

SELECT price,sum(price) AS total_price FROM goods WHERE Flavor='Apple';

SELECT Food, avg(price) FROM goods WHERE Food="cake";  

SELECT max(price) FROM goods;

SELECT Food,MIN(price) FROM goods; 

SELECT COUNT(*) FROM goods;

SELECT Flavor,Food, SUM(price) FROM goods GROUP BY Flavor;

SELECT AVG(price),Food,Flavor FROM goods WHERE Flavor="Eclair" OR
											   Food="cake";
                                                 
SELECT AVG(price),Food,Flavor FROM goods WHERE Flavor="Eclair" AND
											   Food="cake";
  
  SELECT AVG(price),Food,Flavor FROM goods WHERE Food="Eclair";
  
  SELECT MAX(price),food,flavor FROM goods GROUP BY Food; 
  
  SELECT MIN(price),food,flavor FROM goods GROUP BY Flavor;
  
  SELECT COUNT(Food) FROM goods ORDER BY Food;
  
  SELECT Flavor FROM goods GROUP BY Flavor;
  
  SELECT *FROM goods WHERE Flavor=" Chocolate" ORDER BY Food ;
  
  