USE CAR_DATABASE;
CREATE DATABASE car_database;

-- CAR AND YEARS
SELECT car_names.MODEL,cars_data.year
FROM CARS_DATA,CAR_NAMES
WHERE CAR_NAMES.ID = CARS_DATA.ID AND
CAR_NAMES.MODEL LIKE "%RENAULT%";

-- VOLVO CARS BETWEEN 1977 AND 1981
SELECT car_names.MODEL,cars_data.year
FROM cars_data,car_names
WHERE car_names.id = cars_data.id AND
CARS_DATA.YEAR BETWEEN 1977 AND 1981 AND CAR_NAMES.MAKE LIKE '%VOLVO%'; 


-- FIND THE CAR
SELECT car_names.Model,car_names.make,car_names.id
FROM cars_data,car_names
WHERE car_names.id = cars_data.id AND
cars_data.cylinders <> 4 and cars_data.MPG > 20 and cars_data.Accelerate>15;

-- cars acc. more than 11 
SELECT car_names.Model,cars_data.year,cars_data.Horsepower
FROM cars_data,car_names
WHERE car_names.id = cars_data.id and
cars_data.Accelerate > 11 order by cars_data.Horsepower;

SELECT car_names.Model,cars_data.year
FROM cars_data,car_names
WHERE car_names.id = cars_data.id and
cars_data.Cylinders = 8 ;

SELECT car_names.Model,cars_data.year
FROM cars_data,car_names
WHERE car_names.id = cars_data.id and
cars_data.year 1979 and 1981;