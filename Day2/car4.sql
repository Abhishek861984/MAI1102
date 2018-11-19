USE carsdb;

-- 1. find the model name of the cars which is  3 characters  from end
SELECT carsdb.car_makers.FullName,
right(FullName,3)
From car_makers;

-- 2. find the students lastname with 3 characters  from starting
SELECT carsdb.car_makers.FullName,
LEFT(FullName,3)
From car_makers;

-- 3. remove the rd from the model name  of all the car 
SELECT carsdb.car_names.Model,
TRIM(trailing 'rd' FROM Model)
From car_names;

-- 4. find the location of 'r' in model name of cars
SELECT model_list.model,
POSITION('r' IN Model )
FROM model_list;

-- 5. get the substring from index 4 to 2 characters from model name 
SELECT carsdb.model_list.Model,
SUBSTR(model, 4,2)
FROM model_list;

-- 6. find the sum of mpg and also print the average mpg  from all the years of car data
SELECT avg(some)
FROM
(SELECT SUM(cars_data.mpg) As some
FROM carsdb.cars_data
GROUP BY Year)
 grade_table;


-- 7.  show all the car ids those has modelname or not registered as a model in car_names table


-- 8. display the cars who has  same horse power from cars_data
