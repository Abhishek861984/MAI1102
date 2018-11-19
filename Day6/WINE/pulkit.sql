use airlinedb;
select * from airlines;
select * from flights;
select airlines.airline,flights.sourceairport from airlines,flights where flights.sourceairport = 'AXX'
group by airlines.airline order by airlines.airline;

select airlines.airline, flights.destairport, flights.flightno from airlines, flights where flights.sourceairport = 'AXX' and airlines.Abbreviation = 'northwest';

select * from airlines,flights where flights.sourceairport like '%AHT%' order by airlines.airline;

select flights.flightno from flights,airlines where airlines.airline like '%Frontier Airlines%' and airlines.airline like '%jetblue%';

select * from airlines where airline like '%Frontier%' or airline like '%USAirways%' or airline like '%UAL%' or airline like '%southwest%';

use carsdb;
select * from car_makers, car_names, cars_data, continents, countries where car_makers.maker = 'renault'; 

select car_makers.maker, cars_data.year from car_makers, cars_data where cars_data.year between 1977 and 1981 and car_makers.maker = 'volvo'; 

select car_makers.makers  cars_data.year from car_data

