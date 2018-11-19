create database airlinesdb;
use airlinesdb;
select airlines.airline, flights.sourceairport 
from airlines, flights
 where airlinesdb.airlines.ID = airlinesdb.flights.airline 
 and sourceairport like "%AXX%" group by flights.airline order by airlines.airline;
 
 select airlines.airline, flights.flightNo, flights.sourceAirport, flights.destairport 
 from flights, airlines 
 where airlinesdb.airlines.Id = airlinesdb.flights.Airline 
 and airlines.airline like "%northwest%" and destAirport like "%AXX%" 
  order by flights.flightNo;
  
select airlines.airline, flights.flightNo, flights.destairport 
from airlines, flights 
where airlinesdb.airlines.Id = airlinesdb.flights.Airline 
and flights.sourceairport like "%AHT%" order by destairport;

select flights.flightNo flight, airlines.airline
from airlines, flights 
where airlinesdb.airlines.Id = airlinesdb.flights.Airline
 and airlines.Abbreviation like "%Frontier%" 
 or airlines.Abbreviation like "%jetblue%" group by airlines.Abbreviation;
 
select airlines.